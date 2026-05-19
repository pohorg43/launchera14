.class public final synthetic Lcom/android/launcher/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/n;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/n;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/n;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/n;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget v0, p0, Lcom/android/launcher/n;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/launcher/n;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->b(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_e  #0x1
    iget-object p0, p0, Lcom/android/launcher/n;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->p(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_16  #0x0
    iget-object p0, p0, Lcom/android/launcher/n;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-static {p0, p1, p2}, Lcom/android/launcher/Launcher;->D0(Lcom/android/launcher/Launcher;Landroid/content/DialogInterface;I)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/launcher/n;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p0, p1, p2}, Lcom/oplus/apppatformavailability/AppPlatformAvailability;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
