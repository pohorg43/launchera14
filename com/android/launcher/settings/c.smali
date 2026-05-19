.class public final synthetic Lcom/android/launcher/settings/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher/settings/LauncherModelFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/settings/LauncherModelFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/c;->a:Lcom/android/launcher/settings/LauncherModelFragment;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/settings/c;->a:Lcom/android/launcher/settings/LauncherModelFragment;

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherModelFragment;->g(Lcom/android/launcher/settings/LauncherModelFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
