.class public final Lio/branch/search/ui/ImageLoadingStrategy$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/ui/ImageLoadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/p5;Lio/branch/search/BranchBaseAppResult;)Lio/branch/search/ui/ImageLoadingStrategy;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/p5;",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;)",
            "Lio/branch/search/ui/ImageLoadingStrategy;"
        }
    .end annotation

    const-string p0, "contextDelegate"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "app"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "app.packageName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lio/branch/search/p5;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2f

    new-instance p0, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    const-string v0, "app.userHandle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object p0

    :cond_2f
    :try_start_2f
    invoke-static {}, Lio/branch/search/y0;->b()Lio/branch/search/y0;

    move-result-object p0

    new-instance p1, Lio/branch/search/z0;

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getAppIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getResultType()Lio/branch/search/l;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lio/branch/search/z0;-><init>(Ljava/lang/String;Lio/branch/search/l;)V

    invoke-virtual {p0, p1}, Lio/branch/search/y0;->a(Lio/branch/search/z0;)Lp1/c;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    if-eqz p0, :cond_9e

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9e

    new-instance p1, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "cachedImageFile.path"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;-><init>(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_61} :catch_62

    return-object p1

    :catch_62
    move-exception p0

    instance-of p1, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz p1, :cond_7c

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of v0, p1, Lz0/r;

    if-eqz v0, :cond_7c

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to load resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7c

    goto :goto_9e

    :cond_7c
    const-string p1, "package = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", appIconUrl = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getAppIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageLoadingStrategy.fromApp"

    invoke-static {v0, p1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9e
    :goto_9e
    new-instance p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getAppIconUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app.appIconUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getResultType()Lio/branch/search/l;

    move-result-object p2

    const-string v0, "app.resultType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/branch/search/ui/ImageLoadingStrategy$Url;-><init>(Ljava/lang/String;Lio/branch/search/l;Lio/branch/search/ui/ImageLoadingStrategy;)V

    return-object p0
.end method

.method public final b(Lio/branch/search/p5;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/ImageLoadingStrategy;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/p5;",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;",
            "Lio/branch/search/BranchBaseLinkResult;",
            ")",
            "Lio/branch/search/ui/ImageLoadingStrategy;"
        }
    .end annotation

    const-string v0, "contextDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p3, Lio/branch/search/BranchLocalLinkResult;

    if-eqz v0, :cond_38

    invoke-virtual {p3}, Lio/branch/search/BranchBaseLinkResult;->findShortcut()Lio/branch/search/j$h;

    move-result-object v0

    if-eqz v0, :cond_38

    new-instance p0, Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;

    check-cast p3, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {p3}, Lio/branch/search/BranchBaseLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "link.destinationPackageName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, v0, Lio/branch/search/j$h;->d:Landroid/os/UserHandle;

    const-string p3, "it.user"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, v0, Lio/branch/search/j$h;->c:Ljava/lang/String;

    const-string v0, "it.id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-object p0

    :cond_38
    invoke-virtual {p3}, Lio/branch/search/BranchBaseLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f1

    :try_start_42
    invoke-static {}, Lio/branch/search/y0;->b()Lio/branch/search/y0;

    move-result-object v0

    new-instance v1, Lio/branch/search/z0;

    invoke-virtual {p3}, Lio/branch/search/BranchBaseLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lio/branch/search/BranchBaseLinkResult;->getResultType()Lio/branch/search/l;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/branch/search/z0;-><init>(Ljava/lang/String;Lio/branch/search/l;)V

    invoke-virtual {v0, v1}, Lio/branch/search/y0;->a(Lio/branch/search/z0;)Lp1/c;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_b1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b1

    new-instance v1, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cachedImageFile.path"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;-><init>(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_74} :catch_75

    return-object v1

    :catch_75
    move-exception v0

    instance-of v1, v0, Ljava/util/concurrent/ExecutionException;

    if-eqz v1, :cond_8f

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Lz0/r;

    if-eqz v2, :cond_8f

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to load resource"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    goto :goto_b1

    :cond_8f
    const-string v1, "package = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lio/branch/search/BranchBaseLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", imageUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lio/branch/search/BranchBaseLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageLoadingStrategy.fromLink"

    invoke-static {v2, v1, v0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b1
    :goto_b1
    invoke-static {p3}, Lio/branch/search/x4;->a(Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shortcut"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    new-instance p0, Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app.packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    const-string v0, "app.user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fakeShortcutIdWillCauseUseOfDefaultDrawable"

    invoke-direct {p0, p1, p2, v0}, Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_d9

    :cond_d5
    invoke-virtual {p0, p1, p2}, Lio/branch/search/ui/ImageLoadingStrategy$a;->a(Lio/branch/search/p5;Lio/branch/search/BranchBaseAppResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object p0

    :goto_d9
    new-instance p1, Lio/branch/search/ui/ImageLoadingStrategy$Url;

    invoke-virtual {p3}, Lio/branch/search/BranchBaseLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    const-string v0, "link.imageUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lio/branch/search/BranchBaseLinkResult;->getResultType()Lio/branch/search/l;

    move-result-object p3

    const-string v0, "link.resultType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, p3, p0}, Lio/branch/search/ui/ImageLoadingStrategy$Url;-><init>(Ljava/lang/String;Lio/branch/search/l;Lio/branch/search/ui/ImageLoadingStrategy;)V

    return-object p1

    :cond_f1
    invoke-virtual {p3}, Lio/branch/search/BranchBaseLinkResult;->getParent()Lio/branch/search/BranchBaseAppResult;

    move-result-object p2

    const-string p3, "link.parent"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lio/branch/search/ui/ImageLoadingStrategy$a;->a(Lio/branch/search/p5;Lio/branch/search/BranchBaseAppResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object p0

    return-object p0
.end method
