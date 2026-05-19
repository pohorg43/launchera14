.class public final synthetic Le0/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Le0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le0/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitControlBarMenu;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Le0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le0/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 2

    iget v0, p0, Le0/b;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Le0/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    invoke-static {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->b(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V

    return-void

    :goto_e
    iget-object p0, p0, Le0/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->a(Lcom/oplus/splitscreen/SplitControlBarMenu;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
