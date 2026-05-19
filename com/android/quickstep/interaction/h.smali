.class public final synthetic Lcom/android/quickstep/interaction/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AlertDialog;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/interaction/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/TutorialController;I)V
    .registers 3

    iput p2, p0, Lcom/android/quickstep/interaction/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/interaction/h;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/quickstep/interaction/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->onActionButtonClicked(Landroid/view/View;)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/quickstep/interaction/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/TutorialController;

    invoke-static {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->f(Lcom/android/quickstep/interaction/TutorialController;Landroid/view/View;)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/android/quickstep/interaction/h;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    invoke-static {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->d(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
