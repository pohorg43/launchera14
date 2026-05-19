.class public final synthetic Lcom/android/launcher3/taskbar/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/taskbar/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/k;->b:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/taskbar/k;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/k;->b:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->g(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/launcher3/taskbar/k;->b:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateNavButtonDarkIntensity()V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
