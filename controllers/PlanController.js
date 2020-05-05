'use strict';

const Plan = require('../models/PlanModel');
const PlanDetail = require('../models/PlanDetailModel');

// list all Plan Details
exports.list = function (req, res) {
    try{
        PlanDetail.getAllDetail(function (err, plan_details) {
            if (plan_details.length > 0) {
                return res.status(200).send({status:200,error:false,message:'Successful Fetched'});
            }else{
                return res.status(400).send({status:400,error:true, message:'No data available'});
            }
      
    });
    }catch(err){
        throw new Error(err.message);
    }

};

// create new plan details
exports.create = function (req, res) {
    try {
        var new_detail= new PlanDetail(req.body);
            //handles null error 
        if (!new_detail.plan_desc||!new_detail.num_image ||!new_detail.num_scan||!new_detail.rate||!new_detail.level) {
            res.status(400).send({ status:400, error: true, message: 'Please provide the data' });
        } else {
            PlanDetail.createPlanDetail(new_detail, function (err, plan_detail) {
                if(plan_detail>0){
                    return res.status(200).send({status:200,error:false,message:'Successful'});
                }else{
                   return res.status(400).send({status:400, error:true,message:err});
                }
            });
        }
    } catch (err) {
        throw new Error(err.message);
    }

};
// Assign plan
exports.assignPlan = function(req,res){
    try{
      var assign_plan = new Plan({
          'user_id':req.session.user_id,
          'plan_id':req.body.plan_id
      });
      if(!assign_plan.user_id||!assign_plan.plan_id){
        res.status(400).send({ status:400, error: true, message: 'Please provide the data' });
      }else{
        Plan.create(assign_plan, function (err, plan) {
            if(plan>0){
                return res.status(201).send({status:201,error:false,message:'OK'});
            }else{
               return res.status(400).send({status:400, error:true,message:err});
            }
        });
      }
    }catch(err){
        throw new Error(err.message);
    }
}