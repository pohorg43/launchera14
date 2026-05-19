.class public final synthetic Lcom/android/common/util/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZI)V
    .registers 5

    iput p3, p0, Lcom/android/common/util/i0;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/i0;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/common/util/i0;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/common/util/i0;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/common/util/i0;->b:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/common/util/i0;->c:Z

    invoke-static {v0, p0}, Lcom/android/common/util/LauncherModeUtil;->b(Landroid/content/Context;Z)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/common/util/i0;->b:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/common/util/i0;->c:Z

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsAnimationController;->j(Landroid/content/Context;Z)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
