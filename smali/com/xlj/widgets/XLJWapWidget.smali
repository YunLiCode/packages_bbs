.class public Lcom/xlj/widgets/XLJWapWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "XLJWapWidget.java"


# static fields
.field private static mWapIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/xlj/widgets/XLJWapWidget;->mWapIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    const/4 v6, 0x0

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 19
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x7f030000

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 20
    .local v3, "views":Landroid/widget/RemoteViews;
    sget-object v4, Lcom/xlj/widgets/XLJWapWidget;->mWapIntent:Landroid/content/Intent;

    if-nez v4, :cond_0

    .line 21
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    sput-object v4, Lcom/xlj/widgets/XLJWapWidget;->mWapIntent:Landroid/content/Intent;

    .line 22
    sget-object v4, Lcom/xlj/widgets/XLJWapWidget;->mWapIntent:Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    sget-object v4, Lcom/xlj/widgets/XLJWapWidget;->mWapIntent:Landroid/content/Intent;

    const-string v5, "http://wap.xiaolajiao.com "

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 25
    :cond_0
    sget-object v4, Lcom/xlj/widgets/XLJWapWidget;->mWapIntent:Landroid/content/Intent;

    invoke-static {p1, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 26
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const/high16 v4, 0x7f070000

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 27
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 28
    .local v0, "gm":Landroid/appwidget/AppWidgetManager;
    if-eqz p3, :cond_1

    .line 29
    invoke-virtual {v0, p3, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_1
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method
