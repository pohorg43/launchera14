.class public final synthetic Lcom/android/launcher3/dragndrop/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/dragndrop/AddItemActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/c;->a:Lcom/android/launcher3/dragndrop/AddItemActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/c;->a:Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->u(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;)V

    return-void
.end method
