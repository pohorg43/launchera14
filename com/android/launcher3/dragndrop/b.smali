.class public final synthetic Lcom/android/launcher3/dragndrop/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/dragndrop/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/dragndrop/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/dragndrop/b;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->n(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->s(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->a(Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
