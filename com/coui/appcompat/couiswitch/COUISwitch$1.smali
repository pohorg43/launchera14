.class Lcom/coui/appcompat/couiswitch/COUISwitch$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/couiswitch/COUISwitch;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/couiswitch/COUISwitch;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->a:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0x107

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_a
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->a:Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-object v0, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->m:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$1;->a:Lcom/coui/appcompat/couiswitch/COUISwitch;

    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->performHapticFeedback(I)Z

    :cond_1d
    return-void
.end method
