#include "widget.h"
#include "ui_widget.h"
#include <QDebug>

Widget::Widget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Widget)
{
    ui->setupUi(this);
}

Widget::~Widget()
{
    delete ui;
}


void Widget::on_pushButton_clicked()
{
    qDebug()  << "En cours de développement";
}

void Widget::on_pushButton_2_clicked()
{
    qDebug()  << "En cours de développement";
}