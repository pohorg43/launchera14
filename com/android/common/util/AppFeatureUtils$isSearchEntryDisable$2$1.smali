.class final Lcom/android/common/util/AppFeatureUtils$isSearchEntryDisable$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/AppFeatureUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/util/AppFeatureUtils$isSearchEntryDisable$2$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/AppFeatureUtils$isSearchEntryDisable$2$1;

    invoke-direct {v0}, Lcom/android/common/util/AppFeatureUtils$isSearchEntryDisable$2$1;-><init>()V

    sput-object v0, Lcom/android/common/util/AppFeatureUtils$isSearchEntryDisable$2$1;->INSTANCE:Lcom/android/common/util/AppFeatureUtils$isSearchEntryDisable$2$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->changeSupportState()V

    :cond_29
    return-void
.end method
