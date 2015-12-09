<#include "include/head.ftl">
<#include "include/navbar.ftl">
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 nav-tabs sidebar">
            <ul class="nav nav-sidebar">
                <li class="active"><a href="#"><i class="glyphicon glyphicon-home"></i> 首页 <span class="sr-only">(current)</span></a></li>
                <li class=""><a href="#"> <i class="glyphicon glyphicon-user"></i> 用户管理</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-list"></i>   菜单管理</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-dashboard"></i> 权限管理</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href=""><i class="glyphicon glyphicon-qrcode"></i> Nav item</a></li>
                <li><a href=""><i class="glyphicon glyphicon-saved"></i> Nav item again</a></li>
                <li><a href=""><i class="glyphicon glyphicon-list-alt"></i> One more nav</a></li>
                <li><a href=""><i class="glyphicon glyphicon-th-list"></i> Another nav item</a></li>
                <li><a href=""><i class="glyphicon glyphicon-apple"></i> More navigation</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href=""><i class="glyphicon glyphicon-lamp"></i> Nav item again</a></li>
                <li><a href=""><i class="glyphicon glyphicon-sd-video"></i> One more nav</a></li>
                <li><a href=""><i class="glyphicon glyphicon-align-center"></i> Another nav item</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">Dashboard</h1>

            <div class="row placeholders">
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Label</h4>
                    <span class="text-muted">Something else</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Label</h4>
                    <span class="text-muted">Something else</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Label</h4>
                    <span class="text-muted">Something else</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Label</h4>
                    <span class="text-muted">Something else</span>
                </div>
            </div>
            <div class="span9 with-sidebar">
                <div class="container">
                    <form class="new_user_form inline-input">
                        <div class="span12 field-box">
                            <label>Name:</label>
                            <input class="span9" type="text">
                        </div>
                        <div class="span12 field-box">
                            <label>State:</label>
                            <div class="ui-select span5">
                                <select>
                                    <option value="AK">Alaska
                                    </option><option value="HI">Hawaii
                                </option><option value="CA">California
                                </option><option value="NV">Nevada
                                </option><option value="OR">Oregon
                                </option><option value="WA">Washington
                                </option><option value="AZ">Arizona
                                </option></select>
                            </div>
                        </div>
                        <div class="span12 field-box">
                            <label>Company:</label>
                            <input class="span9" type="text">
                        </div>
                        <div class="span12 field-box">
                            <label>Email:</label>
                            <input class="span9" type="text">
                        </div>
                        <div class="span12 field-box">
                            <label>Phone:</label>
                            <input class="span9" type="text">
                        </div>
                        <div class="span12 field-box">
                            <label>Website:</label>
                            <input class="span9" type="text">
                        </div>
                        <div class="span12 field-box">
                            <label>Address:</label>
                            <div class="address-fields">
                                <input class="span12" type="text" placeholder="Street address">
                                <input class="span12 small" type="text" placeholder="City">
                                <input class="span12 small" type="text" placeholder="State">
                                <input class="span12 small last" type="text" placeholder="Postal Code">
                            </div>
                        </div>
                        <div class="span12 field-box textarea">
                            <label>Notes:</label>
                            <textarea class="span9"></textarea>
                            <span class="charactersleft">90 characters remaining. Field limited to 100 characters</span>
                        </div>
                        <div class="span11 field-box actions">
                            <input type="button" class="btn-glow primary" value="Create user">
                            <span>OR</span>
                            <input type="reset" value="Cancel" class="reset">
                        </div>
                    </form>
                </div>
            </div>
            <input class="span5 inline-input" value="test">
            <h2 class="sub-header">Section title</h2>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Header</th>
                        <th>Header</th>
                        <th>Header</th>
                        <th>Header</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1,001</td>
                        <td>Lorem</td>
                        <td>ipsum</td>
                        <td>dolor</td>
                        <td>sit</td>
                    </tr>
                    <tr>
                        <td>1,002</td>
                        <td>amet</td>
                        <td>consectetur</td>
                        <td>adipiscing</td>
                        <td>elit</td>
                    </tr>
                    <tr>
                        <td>1,003</td>
                        <td>Integer</td>
                        <td>nec</td>
                        <td>odio</td>
                        <td>Praesent</td>
                    </tr>
                    <tr>
                        <td>1,003</td>
                        <td>libero</td>
                        <td>Sed</td>
                        <td>cursus</td>
                        <td>ante</td>
                    </tr>
                    <tr>
                        <td>1,004</td>
                        <td>dapibus</td>
                        <td>diam</td>
                        <td>Sed</td>
                        <td>nisi</td>
                    </tr>
                    <tr>
                        <td>1,005</td>
                        <td>Nulla</td>
                        <td>quis</td>
                        <td>sem</td>
                        <td>at</td>
                    </tr>
                    <tr>
                        <td>1,006</td>
                        <td>nibh</td>
                        <td>elementum</td>
                        <td>imperdiet</td>
                        <td>Duis</td>
                    </tr>
                    <tr>
                        <td>1,007</td>
                        <td>sagittis</td>
                        <td>ipsum</td>
                        <td>Praesent</td>
                        <td>mauris</td>
                    </tr>
                    <tr>
                        <td>1,008</td>
                        <td>Fusce</td>
                        <td>nec</td>
                        <td>tellus</td>
                        <td>sed</td>
                    </tr>
                    <tr>
                        <td>1,009</td>
                        <td>augue</td>
                        <td>semper</td>
                        <td>porta</td>
                        <td>Mauris</td>
                    </tr>
                    <tr>
                        <td>1,010</td>
                        <td>massa</td>
                        <td>Vestibulum</td>
                        <td>lacinia</td>
                        <td>arcu</td>
                    </tr>
                    <tr>
                        <td>1,011</td>
                        <td>eget</td>
                        <td>nulla</td>
                        <td>Class</td>
                        <td>aptent</td>
                    </tr>
                    <tr>
                        <td>1,012</td>
                        <td>taciti</td>
                        <td>sociosqu</td>
                        <td>ad</td>
                        <td>litora</td>
                    </tr>
                    <tr>
                        <td>1,013</td>
                        <td>torquent</td>
                        <td>per</td>
                        <td>conubia</td>
                        <td>nostra</td>
                    </tr>
                    <tr>
                        <td>1,014</td>
                        <td>per</td>
                        <td>inceptos</td>
                        <td>himenaeos</td>
                        <td>Curabitur</td>
                    </tr>
                    <tr>
                        <td>1,015</td>
                        <td>sodales</td>
                        <td>ligula</td>
                        <td>in</td>
                        <td>libero</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<#include "include/footer.ftl">
