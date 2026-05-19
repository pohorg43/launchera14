.class public final synthetic Lcom/android/launcher3/popup/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/popup/SystemShortcut$Factory;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/e0;->a:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    return-void
.end method


# virtual methods
.method public final getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/popup/e0;->a:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    check-cast p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/popup/QuickstepSystemShortcut;->a(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method
