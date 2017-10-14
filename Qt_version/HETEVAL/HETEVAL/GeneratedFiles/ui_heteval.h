/********************************************************************************
** Form generated from reading UI file 'heteval.ui'
**
** Created by: Qt User Interface Compiler version 5.6.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_HETEVAL_H
#define UI_HETEVAL_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTextBrowser>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_HETEVALClass
{
public:
    QWidget *centralWidget;
    QHBoxLayout *horizontalLayout;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *OpenFile;
    QPushButton *RunButton;
    QTextBrowser *ShowInput;
    QTextBrowser *ShowOutput;
    QVBoxLayout *verticalLayout_2;
    QMenuBar *menuBar;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *HETEVALClass)
    {
        if (HETEVALClass->objectName().isEmpty())
            HETEVALClass->setObjectName(QStringLiteral("HETEVALClass"));
        HETEVALClass->resize(973, 681);
        centralWidget = new QWidget(HETEVALClass);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        horizontalLayout = new QHBoxLayout(centralWidget);
        horizontalLayout->setSpacing(6);
        horizontalLayout->setContentsMargins(11, 11, 11, 11);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setSpacing(6);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setSizeConstraint(QLayout::SetMaximumSize);
        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setSpacing(6);
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        OpenFile = new QPushButton(centralWidget);
        OpenFile->setObjectName(QStringLiteral("OpenFile"));

        horizontalLayout_2->addWidget(OpenFile);

        RunButton = new QPushButton(centralWidget);
        RunButton->setObjectName(QStringLiteral("RunButton"));

        horizontalLayout_2->addWidget(RunButton);


        verticalLayout->addLayout(horizontalLayout_2);

        ShowInput = new QTextBrowser(centralWidget);
        ShowInput->setObjectName(QStringLiteral("ShowInput"));

        verticalLayout->addWidget(ShowInput);


        horizontalLayout->addLayout(verticalLayout);

        ShowOutput = new QTextBrowser(centralWidget);
        ShowOutput->setObjectName(QStringLiteral("ShowOutput"));

        horizontalLayout->addWidget(ShowOutput);

        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setSpacing(6);
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));

        horizontalLayout->addLayout(verticalLayout_2);

        HETEVALClass->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(HETEVALClass);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 973, 21));
        HETEVALClass->setMenuBar(menuBar);
        mainToolBar = new QToolBar(HETEVALClass);
        mainToolBar->setObjectName(QStringLiteral("mainToolBar"));
        HETEVALClass->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(HETEVALClass);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        HETEVALClass->setStatusBar(statusBar);

        retranslateUi(HETEVALClass);

        QMetaObject::connectSlotsByName(HETEVALClass);
    } // setupUi

    void retranslateUi(QMainWindow *HETEVALClass)
    {
        HETEVALClass->setWindowTitle(QApplication::translate("HETEVALClass", "HETEVAL", 0));
        OpenFile->setText(QApplication::translate("HETEVALClass", "Open Input File", 0));
        RunButton->setText(QApplication::translate("HETEVALClass", "Run", 0));
    } // retranslateUi

};

namespace Ui {
    class HETEVALClass: public Ui_HETEVALClass {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_HETEVAL_H
