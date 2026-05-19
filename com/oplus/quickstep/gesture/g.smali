.class public final synthetic Lcom/oplus/quickstep/gesture/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/quickstep/gesture/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/g;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/g;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/oplus/smartsdk/themecard/CardApiManager;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;)V
    .registers 6

    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/quickstep/gesture/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/g;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/g;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/plugins/shared/LauncherOverlayManager;Landroid/os/Bundle;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/gesture/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/g;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/g;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .registers 6

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/quickstep/gesture/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/g;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/g;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/utrace/hlog/HLogFilesCollector;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 6

    const/4 v0, 0x4

    iput v0, p0, Lcom/oplus/quickstep/gesture/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/g;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/g;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/utrace/hlog/HLogUploadService;Lcom/oplus/log/Logger;Lcom/oplus/utrace/hlog/PushData;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x5

    iput v0, p0, Lcom/oplus/quickstep/gesture/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/g;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/g;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/oplus/quickstep/gesture/g;->a:I

    packed-switch v0, :pswitch_data_7e

    goto :goto_6a

    :pswitch_6  #0x4
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/utrace/hlog/HLogFilesCollector;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/g;->c:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/g;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/g;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/utrace/hlog/HLogFilesCollector;->b(Lcom/oplus/utrace/hlog/HLogFilesCollector;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    :pswitch_1a  #0x3
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/g;->c:Ljava/lang/Object;

    check-cast v1, Lcom/oplus/smartsdk/themecard/CardApiManager;

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/g;->d:Ljava/lang/Object;

    check-cast v2, Lcom/oplus/smartsdk/SmartApiInfo;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/g;->e:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/smartsdk/themecard/CardApiManager;->a(Landroid/content/Context;Lcom/oplus/smartsdk/themecard/CardApiManager;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;)V

    return-void

    :pswitch_2e  #0x2
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/g;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/g;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/g;->e:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/quickstep/utils/OplusCameraLaunchUtil;->a(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void

    :pswitch_42  #0x1
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/g;->c:Ljava/lang/Object;

    check-cast v1, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/g;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/g;->e:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityOptions;

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->l(Landroid/app/PendingIntent;Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    return-void

    :pswitch_56  #0x0
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/g;->c:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/g;->d:Ljava/lang/Object;

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/g;->e:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->y0(Lcom/android/systemui/plugins/shared/LauncherOverlayManager;Landroid/os/Bundle;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void

    :goto_6a
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/utrace/hlog/HLogUploadService;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/g;->c:Ljava/lang/Object;

    check-cast v1, Lcom/oplus/log/Logger;

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/g;->d:Ljava/lang/Object;

    check-cast v2, Lcom/oplus/utrace/hlog/PushData;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/g;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/utrace/hlog/HLogUploadService;->a(Lcom/oplus/utrace/hlog/HLogUploadService;Lcom/oplus/log/Logger;Lcom/oplus/utrace/hlog/PushData;Ljava/lang/String;)V

    return-void

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_56  #00000000
        :pswitch_42  #00000001
        :pswitch_2e  #00000002
        :pswitch_1a  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
