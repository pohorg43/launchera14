.class public final Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/IBranchLocalQueryHintEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->refreshBranchSuggestedLinksAndHints(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBranchUIManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BranchUIManagerImpl.kt\ncom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1503:1\n1747#2,3:1504\n*S KotlinDebug\n*F\n+ 1 BranchUIManagerImpl.kt\ncom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$2\n*L\n293#1:1504,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$2;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBranchQueryHintError(Lio/branch/search/BranchLocalError;)V
    .registers 3

    const-string p0, "error"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBranchHints onBranchQueryHintError = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BranchUIManagerImpl"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBranchQueryHintResult(Lio/branch/search/BranchQueryHintResult;)V
    .registers 6

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/search/BranchQueryHintResult;->getHints()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    move v0, v1

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v2

    :goto_18
    if-nez v0, :cond_66

    invoke-virtual {p1}, Lio/branch/search/BranchQueryHintResult;->getHints()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v3, "result.hints"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_53

    :cond_2f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/BranchQueryHint;

    invoke-virtual {v3}, Lio/branch/search/BranchQueryHint;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4e

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4c

    goto :goto_4e

    :cond_4c
    move v3, v1

    goto :goto_4f

    :cond_4e
    :goto_4e
    move v3, v2

    :goto_4f
    xor-int/2addr v3, v2

    if-eqz v3, :cond_33

    move v1, v2

    :cond_53
    :goto_53
    if-eqz v1, :cond_66

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$2;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object p0

    if-eqz p0, :cond_6e

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {v0, p1}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->hints(Ljava/lang/Object;)V

    goto :goto_6e

    :cond_66
    const-string p0, "BranchUIManagerImpl"

    const-string/jumbo p1, "onBranchQueryHintResult empty"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    :goto_6e
    return-void
.end method
