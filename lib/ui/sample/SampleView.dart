import 'package:flutter/material.dart';
import 'package:pdam/common/mvp/BaseState.dart';
import 'package:pdam/common/mvp/BaseView.dart';
import 'package:pdam/ui/sample/Sample.dart';
import 'package:pdam/ui/sample/SampleContract.dart';
import 'package:pdam/ui/sample/SamplePresenter.dart';

class SampleView extends BaseView{

  final int id;

  SampleView(this.id);

  @override
  get title => 'Sample';


  @override
  Widget buildContent(BuildContext context) {
    return _SampleView(this.id);
  }
}

class _SampleView extends StatefulWidget {
  final int id;

  _SampleView(this.id);

  @override
  __SampleViewState createState() => __SampleViewState(id);
}

class __SampleViewState extends BaseState<_SampleView> implements SampleV {

  final int _id;

  Sample _sample;
  SampleP presenter;

  __SampleViewState(this._id);

  @override
    void initState() {
      super.initState();
      presenter = new SamplePresenter(this);
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
             controller: _sample.controller1, 
          ),
          TextField(
            controller: _sample.controller2,  
          ),
          RaisedButton(
            onPressed: () => presenter.buttonClick(),
            child: Icon(Icons.add),
          ),
          Text('Result_$_id: ${_sample.result}', style: TextStyle(fontSize: 30.0),)
        ],
      )
    );
  }

  @override
  void refreshData(Sample sample) {
    setState(() {
        _sample = sample;    
      });
  }

}
