.class public final synthetic Lcom/android/launcher/settings/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher/settings/LauncherModelFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/settings/LauncherModelFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/a;->a:Lcom/android/launcher/settings/LauncherModelFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/settings/a;->a:Lcom/android/launcher/settings/LauncherModelFragment;

    invoke-static {p0, p1, p2}, Lcom/android/launcher/settings/LauncherModelFragment;->i(Lcom/android/launcher/settings/LauncherModelFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method
