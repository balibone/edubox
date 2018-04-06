import React, {Component} from 'react';
import {Table, thead, tbody, Button, Panel, PanelGroup} from 'react-bootstrap';
import SingleAssignment from './SingleAssignment';
import SingleAssignmentTable from './SingleAssignmentTable';
import GroupSubmission from '../StudentSubmission/GroupSubmission';
import IndividualSubmission from '../StudentSubmission/IndividualSubmission';

class Submission extends Component {

	renderAssignment(assignmentList){
		return assignmentList.map((assignment) => 
			(
			<Panel eventKey={assignment.id}>
		    	<Panel.Heading>
		      		<Panel.Title toggle>
		      			{assignment.title} &nbsp;
		      			({
		      				(assignment.groups.length>0) ? "Group" : "Individual"
		      			})
		      		</Panel.Title>
		    	</Panel.Heading>
		    	<Panel.Body collapsible>
		    		{
		    			(assignment.groups.lengtsh>0) ?
		    			<GroupSubmission assignment={assignment}/> : <IndividualSubmission assignment={assignment} />
		    		}
		    	</Panel.Body>
	 		</Panel>
			)
		)
	}

	render(){
		const assignmentList = this.props.assignmentList;

		return(
			<div className="standardTopGap">
			<h4>Students Submissions</h4>
				<PanelGroup accordion id="accordion-example">
					{this.renderAssignment(assignmentList)}
				</PanelGroup>
			</div>
		)
	}
}

export default Submission;