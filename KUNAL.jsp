<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>KUNAL</title>
<link rel="stylesheet" href="anuj.css" />
</head>
<body>
<div class="task-manager">
      <div class="left-bar">
        <div class="upper-part">
          <div class="actions">
          <img src="images/kunal.jpg" alt="" height="50px" width="50px">
          <h1><i>KUNAL</i></h1>
          </div>
        </div>
        <div class="left-content">
          <ul class="action-list">
            <li class="item">
              <img class="feather feather-inbox" src="svg/inbox.svg" alt="" />
              <span>Inbox</span>
            </li>
            <li class="item">
              <img class="feather feather-star" src="svg/star.svg" alt="" />
              <span> Today</span>
            </li>
            <li class="item">
              <img class="feather feather-calendar" src="svg/calender.svg" alt="" />
              <span>Upcoming</span>
            </li>
            <li class="item">
              <img class="feather feather-hash" src="svg/hash.svg" alt="" />
              <span>Important</span>
            </li>
            <li class="item">
              <img class="feather feather-users" src="svg/users.svg" alt="" />
              <span>Meetings</span>
            </li>
            <li class="item">
              <img class="feather feather-trash" src="svg/trash.svg" alt="" />
              <span>Trash</span>
            </li>
          </ul>

          <ul class="category-list">
            <li class="item">
              <img class="feather feather-users" src="svg/users.svg" alt="" />
              <span>Family</span>
            </li>
            <li class="item">
              <img class="feather feather-sun" src="svg/sun.svg" alt="" />
              <span>Vacation</span>
            </li>
          </ul>
        </div>
      </div>
      <div class="page-content">
        <div class="header">Today Tasks</div>

        <div class="content-categories">
          <div class="label-wrapper">
            <input class="nav-item" name="nav" type="radio" id="opt-1" />
            <label class="category" for="opt-1">All</label>
          </div>
          <div class="label-wrapper">
            <input class="nav-item" name="nav" type="radio" id="opt-2" checked />
            <label class="category" for="opt-2">Important</label>
          </div>
          <div class="label-wrapper">
            <input class="nav-item" name="nav" type="radio" id="opt-3" />
            <label class="category" for="opt-3">Notes</label>
          </div>
        </div>

        <div class="tasks-wrapper">
          <div class="task">
            <input class="task-item" name="task" type="checkbox" id="item-1" checked />
            <label for="item-1">
              <span class="label-text">Dashboard Design Implementation</span>
            </label>
            <span class="tag approved">Approved</span>
          </div>
          <div class="task">
            <input class="task-item" name="task" type="checkbox" id="item-2" checked />
            <label for="item-2">
              <span class="label-text">Create a userflow</span>
            </label>
            <span class="tag progress">In Progress</span>
          </div>
          <div class="task">
            <input class="task-item" name="task" type="checkbox" id="item-3" />
            <label for="item-3">
              <span class="label-text">Application Implementation</span>
            </label>
            <span class="tag review">In Review</span>
          </div>
          <div class="task">
            <input class="task-item" name="task" type="checkbox" id="item-4" />
            <label for="item-4">
              <span class="label-text">Create a Dashboard Design</span>
            </label>
            <span class="tag progress">In Progress</span>
          </div>
          <div class="task">
            <input class="task-item" name="task" type="checkbox" id="item-6" />
            <label for="item-6">
              <span class="label-text">Interactive Design</span>
            </label>
            <span class="tag review">In Review</span>
          </div>
          <div class="header upcoming">Upcoming Tasks</div>
          <div class="task">
            <input class="task-item" name="task" type="checkbox" id="item-7" />
            <label for="item-7">
              <span class="label-text">Dashboard Design Implementation</span>
            </label>
            <span class="tag waiting">Waiting</span>
          </div>
          <div class="task">
            <input class="task-item" name="task" type="checkbox" id="item-9" />
            <label for="item-9">
              <span class="label-text">Application Implementation</span>
            </label>
            <span class="tag waiting">Waiting</span>
          </div>
          <div class="task">
            <input class="task-item" name="task" type="checkbox" id="item-10" />
            <label for="item-10">
              <span class="label-text">Create a Dashboard Design</span>
            </label>
            <span class="tag waiting">Waiting</span>
          </div>
        </div>

      </div>
 
      <div class="right-bar">
        <div class="top-part">
          <img class="feather feather-users" src="svg/users.svg" alt="" />
          <div class="count">5</div>
        </div>
        <div class="header">Schedule</div>
        <div class="right-content">
          <div class="task-box yellow">
            <div class="description-task">
              <div class="time">08:00 - 09:00 AM</div>
              <div class="task-name">Product Review</div>
            </div>
            <div class="more-button"></div>
            <div class="members">
              <img src="images/img1.jpg" alt="member" />
              <img src="images/img2.jpg" alt="member-2" />
              <img src="images/img3.jpg" alt="member-3" />
              <img src="images/img4.jpg" alt="member-4" />
            </div>
          </div>
          <div class="task-box blue">
            <div class="description-task">
              <div class="time">10:00 - 11:00 AM</div>
              <div class="task-name">Design Meeting</div>
            </div>
            <div class="more-button"></div>
            <div class="members">
              <img src="images/img5.jpg" alt="member" />
              <img src="images/img6.jpg" alt="member-2" />
              <img src="images/img7.jpg" alt="member-3" />
            </div>
          </div>
          <div class="task-box red">
            <div class="description-task">
              <div class="time">01:00 - 02:00 PM</div>
              <div class="task-name">Team Meeting</div>
            </div>
            <div class="more-button"></div>
            <div class="members">
              <img src="images/img1.jpg" alt="member" />
              <img src="images/img2.jpg" alt="member-2" />
              <img src="images/img3.jpg" alt="member-3" />
              <img src="images/img4.jpg" alt="member-4" />
            </div>
          </div>
          <div class="task-box green">
            <div class="description-task">
              <div class="time">03:00 - 04:00 PM</div>
              <div class="task-name">Release Event</div>
            </div>
            <div class="more-button"></div>
            <div class="members">
              <img src="images/img5.jpg" alt="member" />
              <img src="images/img6.jpg" alt="member-2" />
              <img src="images/img7.jpg" alt="member-3" />
              <img src="images/img8.jpg" alt="member-4" />
              <img src="images/img9.jpg" alt="member-5" />
            </div>
          </div>
          <div class="task-box yellow">
            <div class="description-task">
              <div class="time">11:00 - 12:00 PM</div>
              <div class="task-name">Practise</div>
            </div>
            <div class="more-button"></div>
            <div class="members">
              <img src="images/img1.jpg" alt="member" />
              <img src="images/img2.jpg" alt="member-2" />
              <img src="images/img3.jpg" alt="member-3" />
              <img src="images/img4.jpg" alt="member-4" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
