<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body>
        <h1 class="mx-4 mt-3 mb-5">User Management System</h1>

        <div class="container  mb-3">
        <h2>User List</h2>
            <div class="row">
                <div class="col">
                    <table class="table table-hover">
                        <thead class="table-dark">
                            <tr>
                                <th>Email</th>
                                <th>Active</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Role</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="user" items="${users}">
                            <tr>
                                <td>${user.email}</td>
                                <td>
                                    <c:if test="${user.active == true}">active</c:if>
                                </td>
                                <td>${user.firstName}</td>
                                <td>${user.lastName}</td>
                                <td>${user.role}</td>
                                <td>
                                    <form action="User" method="post">
                                        <button type="submit" name="edit" id="edit" value="${user.email}">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
                                                <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
                                            </svg>
                                        </button>
                                    </form>
                                </td>
                                <td>
                                    <form action="User" method="post">
                                        <button type="submit" name="delete" id="delete"  value="${user.email}">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3-fill" viewBox="0 0 16 16">
                                                <path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5Zm-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5ZM4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06Zm6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528ZM8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5Z"/>
                                            </svg>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <form class="col-sm-8 my-5 p-4 border border-secondary" action="User" method="post">
                <h2 class="pb-3">Add/Update User</h2>
                <div class="mb-3 row">
                    <lable for="email" class="col-sm-2 col-form-label">Email </lable>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" name="email" id="email" placeholder="Email" aria-label="Email" aria-describedby="basic-addon1" value="${input_email}">
                    </div>
                </div>
                <div class="mb-3 row">
                        <label class="col-sm-2 form-check-label" for="flexCheckDefault">Active</label>
                        <div class="col-sm-7">
                            <input class="form-check-input" type="checkbox" name="active" value="" id="flexCheckDefault"  value="${input_active}">
                        </div>
                </div>
                <div class="mb-3 row">
                    <lable for="firstname" class="col-sm-2 col-form-label">First Name </lable>
                    <div class="col-sm-7">
                        <input type="text" class="form-control"  name="firstname" id="firstname" placeholder="First Name" aria-label="First Name" aria-describedby="basic-addon1" value="${input_firstname}">
                    </div>
                </div>
                <div class="mb-3 row">
                    <lable for="lastname" class="col-sm-2 col-form-label">Last Name </lable>
                    <div class="col-sm-7">
                        <input type="text" class="form-control"  name="lastname" id="lastname" placeholder="Last Name" aria-label="Last Name" aria-describedby="basic-addon1" value="${input_lastname}">
                    </div>
                </div>
                <div class="mb-3 row">
                    <lable for="password" class="col-sm-2 col-form-label">Password </lable>
                    <div class="col-sm-7">                
                        <input type="password" class="form-control"  name="password" id="password" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1" value="${input_password}">
                    </div>
                </div>
                <div class="mb-3 row">
                    <lable for="role" class="col-sm-2 col-form-label">Role </lable>
                    <div class="col-sm-7">                
                        <select class="form-select" name="role" id="role" aria-label="Default select example">
                            <option value="" selected hidden disabled>Select a role</option>
                            <option value="1">company admin</option>
                            <option value="2">system admin</option>
                            <option value="3">regular user</option>
                        </select>
                    </div>
                </div>
                <button type="submit" class="btn btn-outline-dark" name="add" id="add">ADD USER</button>
                <button type="submit" class="mx-2 btn btn-outline-dark" name="update" id="update">UPDATE</button>
                <button type="submit" class="mx-4 btn btn-outline-dark" name="cancel" id="cancel">CANCEL</button>
            </form>
            
            <div>${message}</div>

    </body>
</html>
