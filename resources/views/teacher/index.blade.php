<?php
include APPROOT . '/resources/views/inc/header.blade.php';
 ?>
    <div class="banner-faq">
        <div class="container-fluid">
            <h1 class="forum-title">Manage your lessons</h1>
            <p>Teachers can be able to edit their own lessons</p>
        </div>
    </div>
    <div class="container">
      <div class="row team-info">
        <div class="col-lg-3">

            <ul class="nav nav-pills flex-column" id="myTab" role="tablist">
              <li class="nav-item">
                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab">My lessons</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="student-tab" data-toggle="tab" href="#student" role="tab">My students</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab">Upload lesson</a>
              </li>
            </ul>

        </div>
        <!-- /.col-md-4 -->
        <div class="col-lg-9">
          <div class="tab-content container-fluid" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel">
              <?php foreach ($data['Lessons'] as $key):?>
                <div class="card-lesson" style="--background:<?php echo $key['color'];?>; --color:white;">
                <div class="multi-button">
                  <button class="fa fa-heart"></button>
                  <button class="fa fa-edit" onclick="window.location.href='<?php echo URLROOT . "lessons/index/?lessonID=". $key['LessonID'];?>'"></button>
                  <button class="fa fa-share-alt"></button>
                  <button class="fa fa-trash" onclick="window.location.href='<?php echo URLROOT ?>teacher/deletelesson?lessonID=<?php echo $key['LessonID'];?>'"></button>
                </div>
                <div class="container-teacher">
                  <div class="course-head">
                    <h2 style="color: white !important;"><?php echo $key['LessonName'];?></h2>
                  </div>
                  <div class="course-content">
                    <div>
                    <img src="<?php echo URLROOT ?>/resources/img/<?php echo $key['logo'] ?>" class="img-fluid course-img">
                   </div>
                   <div class="course-info">
                     <div>
                       <p><?php echo $key['LessonDescription'];?></p>
                     </div>
                     <div>
                     <a href="<?php if(session()->get('loggedin'))echo URLROOT . "lessons/index/?lessonID=". $key['LessonID']; else echo '#'; ?>"><button type="button" class="btn btn-secondary btn-lg" name="button">Start</button></a>
                     <a href="<?php if(session()->get('loggedin'))echo URLROOT . "lessons/quiz/?lessonID=" . $key['LessonID']; else echo '#'; ?>"><button type="button" class="btn btn-secondary btn-lg" name="button">Take Quiz</button></a>
                     </div>
                   </div>
                  </div>
                 </div>
              </div>
              <?php endforeach;?>
            </div>

          <div class="tab-pane fade" id="student" role="tabpanel">
            <h1>My list of students:</h1>
            <form class="form-inline adding-form">
              <div class="form-group mb-2">
                <label for="add" class="sr-only"></label>
                <input type="text" readonly class="form-control-plaintext" id="add" value="Add your student here :">
              </div>
              <div class="form-group mx-sm-3 mb-2">
                <label for="inputStudentID" class="sr-only">StudentID</label>
                <input type="StudentID" class="form-control" id="inputStudentID" placeholder="Student ID">
              </div>
              <button type="submit" class="btn-add-students btn btn-secondary btn-lg">Add</button>
            </form>
            <div class="table-responsive-sm">
            <table class="content-table table table-bordered">
            <thead>
              <tr>
             <th>No.</th>
             <th>ID</th>
             <th>Name</th>
             <th>Email</th>
             <th>Lessons</th>
             </tr>
             </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>123</td>
                <td><a href="">abc</a></td>
                <td>abc@abc</td>
                <td><a href="">abcd</a> , <a href="">abcd</a><a href="">abcd</a><a href="">abcd</a><a href="">abcd</a></td>
              </tr>
              <tr class="active-row">
                <td>2</td>
                <td>123</td>
                <td><a href="">abc</a></td>
                <td>abc@abc</td>
                <td><a href="">abcd</a></td>
              </tr>
              <tr>
                <td>3</td>
                <td>123</td>
                <td><a href="">abc</a></td>
                <td>abc@abc</td>
                <td><a href="">abcd</a></td>
              </tr>
              <tr class="active-row">
                <td>4</td>
                <td>123</td>
                <td><a href="">abc</a></td>
                <td>abc@abc</td>
                <td><a href="">abcd</a></td>
              </tr>
            </tbody>
          </table>
          </div>
          </div>
          
          <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
            <form action="<?php echo URLROOT . "teacher/uploadLesson";?>">
            </form>
          </div>

            </div>


        </div>
      </div>
        <!-- /.col-md-8 -->
    </div>

    <!---->



<?php
    include APPROOT . "/resources/views/inc/footer.blade.php";
?>
