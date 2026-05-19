.class public final synthetic Lcom/android/wm/shell/splitscreen/j2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/window/WindowContainerToken;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/j2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/j2;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/j2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/j2;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/j2;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_11

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/j2;->b:Ljava/lang/Object;

    check-cast p0, Landroid/window/WindowContainerToken;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->k(Landroid/window/WindowContainerToken;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0

    :goto_11
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/j2;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->b(Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
