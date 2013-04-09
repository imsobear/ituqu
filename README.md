[途趣网](http://www.tuqu365.com/)
=====

###what's this?
途趣网是一个为驴友提供服务的网站，目前只是基础功能，还没有什么特色功能，[途趣网](http://www.tuqu365.com/)。

###网站的构想：
基于地点的信息分享服务：
   1. 分享东西时，提供选择地点的功能。
   2. 通过地点进行搜索。
   3. 建立一个旅游方面的资料库。
   
###急需解决的问题：
  1. devise的配置，现在不能发确认邮件;注册时若用户名已注册无错误信息显示。
  2. 更换富文本编辑框，ckeditor加载有点慢，而且跟turbolinks一块使用时有问题，[bootstrap-wysihtml5-rails](https://github.com/Nerian/bootstrap-wysihtml5-rails)
  是个不错的选择。
  3. 添加对分享内容评论功能。
  4. 添加地图服务。
  
###Do it with me:
```
点击页面右上方fork `ituqu`
git clone https://github.com/YOUR_USERNAME/ituqu/`
git remote add upstream https://github.com/tomayday/ituqu/`  #添加跟原始资源库关联
#开始开发
git commit  -m '～～～'`
git push origin master`  #提交push到你自己项目的分支库
git fetch upstream  #更新远程代码到本地
git merge upstream/master   #将代码合并到自己的项目分支库
点击你页面上的pull request
```
关于fork, [了解更多](https://help.github.com/articles/fork-a-repo)



