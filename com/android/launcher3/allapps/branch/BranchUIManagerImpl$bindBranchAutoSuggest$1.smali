.class public final Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$bindBranchAutoSuggest$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/branch/BranchLabelsView$LabelTextProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->bindBranchAutoSuggest(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/allapps/branch/BranchLabelsView$LabelTextProvider<",
        "Lio/branch/search/BranchAutoSuggestion;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabelText(Landroid/widget/TextView;ILio/branch/search/BranchAutoSuggestion;)Ljava/lang/CharSequence;
    .registers 4

    const-string p0, "data"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lio/branch/search/BranchAutoSuggestion;->getQuery()Ljava/lang/String;

    move-result-object p0

    const-string p1, "data.run {\n             …  query\n                }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getLabelText(Landroid/widget/TextView;ILjava/lang/Object;)Ljava/lang/CharSequence;
    .registers 4

    check-cast p3, Lio/branch/search/BranchAutoSuggestion;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$bindBranchAutoSuggest$1;->getLabelText(Landroid/widget/TextView;ILio/branch/search/BranchAutoSuggestion;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
