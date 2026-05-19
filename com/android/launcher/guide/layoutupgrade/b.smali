.class public final synthetic Lcom/android/launcher/guide/layoutupgrade/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/layoutupgrade/b;->a:Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/layoutupgrade/b;->a:Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;

    invoke-static {p0, p1}, Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;->e(Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;Landroid/content/DialogInterface;)V

    return-void
.end method
