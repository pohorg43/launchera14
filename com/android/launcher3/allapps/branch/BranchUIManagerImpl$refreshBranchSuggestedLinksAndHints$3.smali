.class public final Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf4/e;


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
        "SMAP\nBranchUIManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BranchUIManagerImpl.kt\ncom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1503:1\n766#2:1504\n857#2,2:1505\n*S KotlinDebug\n*F\n+ 1 BranchUIManagerImpl.kt\ncom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$3\n*L\n309#1:1504\n309#1:1505,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$3;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZeroStateComplete(Lf4/f;Lio/branch/search/BranchError;)V
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBranchSuggestedLinks success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Lio/branch/search/BranchError;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_1b

    :cond_1a
    move-object p2, v1

    :goto_1b
    const-string v2, "BranchUIManagerImpl"

    invoke-static {v0, p2, v2}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_127

    iget-object p1, p1, Lf4/f;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_28
    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_127

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/branch/search/ui/BranchContainer;

    invoke-interface {p2}, Lio/branch/search/ui/BranchContainer;->getContainerType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "zero_state"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    const-string v0, "TYPE_ZERO_STATE: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lio/branch/search/ui/BranchContainer;->getContent()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lio/branch/search/ui/BranchContainer;->getContent()Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$3;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_68
    :goto_68
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lio/branch/search/ui/BranchEntity;

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->access$getDISABLE_SHOW_SUGGEST_LINK$cp()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v5}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->pkgName(Lio/branch/search/ui/BranchEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_68

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_89
    sget-object p2, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMConfig()Lcom/android/launcher3/allapps/branch/BranchRusConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->getMLinkPosition4()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_9b

    goto :goto_a4

    :cond_9b
    invoke-virtual {p2}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMConfig()Lcom/android/launcher3/allapps/branch/BranchRusConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->getMLinkPosition2()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x2

    :goto_a4
    iget-object v4, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$3;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMConfig()Lcom/android/launcher3/allapps/branch/BranchRusConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->getMLinkAdCount()I

    move-result p2

    invoke-static {v4, v3, p2, v0, v5}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->access$filterBranchEntity(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Ljava/util/List;ILjava/util/List;I)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Li4/v;->D(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_bf

    goto :goto_c0

    :cond_bf
    move-object p2, v1

    :goto_c0
    if-eqz p2, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$3;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object v0

    if-eqz v0, :cond_28

    new-instance v3, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {v3, p2}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->suggestedLinks(Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_d4
    const-string/jumbo v3, "suggested_app"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "TYPE_SUGGESTED_APP: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lio/branch/search/ui/BranchContainer;->getContent()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$3;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-interface {p2}, Lio/branch/search/ui/BranchContainer;->getContent()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->filterBranchEntity$default(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Ljava/util/List;ILjava/util/List;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Li4/v;->D(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_112

    goto :goto_113

    :cond_112
    move-object p2, v1

    :goto_113
    if-eqz p2, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$refreshBranchSuggestedLinksAndHints$3;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    move-result-object v0

    if-eqz v0, :cond_28

    new-instance v3, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {v3, p2}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->suggestedApps(Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_127
    return-void
.end method
