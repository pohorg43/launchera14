.class public final Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$bindBranchAutoSuggest$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/branch/BranchLabelsView$OnLabelClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchAutoSuggest(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$bindBranchAutoSuggest$2;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLabelClick(Landroid/widget/TextView;Ljava/lang/Object;I)V
    .registers 4

    const-string/jumbo p1, "null cannot be cast to non-null type io.branch.search.BranchAutoSuggestion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/branch/search/BranchAutoSuggestion;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$bindBranchAutoSuggest$2;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->getMSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    if-eqz p1, :cond_15

    check-cast p0, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    if-eqz p0, :cond_20

    invoke-virtual {p2}, Lio/branch/search/BranchAutoSuggestion;->getQuery()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/search/LauncherTaskbarAppsSearchContainerLayout;->setQuery(Ljava/lang/String;Z)V

    :cond_20
    return-void
.end method
