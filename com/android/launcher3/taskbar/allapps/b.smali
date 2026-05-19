.class public final synthetic Lcom/android/launcher3/taskbar/allapps/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/taskbar/allapps/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/taskbar/allapps/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/taskbar/allapps/b;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/b;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;->b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    check-cast p1, Landroid/view/WindowManager;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->c(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Landroid/view/WindowManager;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
