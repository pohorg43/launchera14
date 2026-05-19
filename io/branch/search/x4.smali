.class public final Lio/branch/search/x4;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/v4;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/BranchEntity$LinkEntity;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/internal/ui/LinkEntityResolver;",
            "Lio/branch/search/v4;",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;",
            "Lio/branch/search/BranchBaseLinkResult;",
            ")",
            "Lio/branch/search/ui/BranchEntity$LinkEntity;"
        }
    .end annotation

    const-string v0, "$this$resolve"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/ui/BranchEntity$LinkEntity;

    iget-object v1, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v1, p2, p3}, Lio/branch/search/t4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    invoke-static {v1, p2, p3}, Lio/branch/search/t4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_28

    :cond_27
    move-object v4, v2

    :goto_28
    invoke-virtual {p3}, Lio/branch/search/BranchBaseLinkResult;->isAd()Z

    move-result v5

    iget-object v1, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    invoke-virtual {p1}, Lio/branch/search/v4;->d()Lio/branch/search/p5;

    move-result-object v6

    invoke-static {v1, v6, p2, p3}, Lio/branch/search/t4;->a(Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/p5;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v6

    iget-object v1, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    if-eqz v1, :cond_44

    invoke-virtual {p1}, Lio/branch/search/v4;->d()Lio/branch/search/p5;

    move-result-object v7

    invoke-static {v1, v7, p2, p3}, Lio/branch/search/t4;->a(Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/p5;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v1

    move-object v7, v1

    goto :goto_45

    :cond_44
    move-object v7, v2

    :goto_45
    instance-of v8, p3, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {p3}, Lio/branch/search/BranchBaseLinkResult;->getContainerType()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v1, :cond_51

    :goto_4f
    move-object v11, v1

    goto :goto_69

    :cond_51
    invoke-virtual {p1}, Lio/branch/search/v4;->b()Lio/branch/search/u4;

    move-result-object v1

    sget-object v11, Lio/branch/search/w4;->c:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v11, v1

    if-eq v1, v10, :cond_66

    if-eq v1, v9, :cond_63

    move-object v11, v2

    goto :goto_69

    :cond_63
    const-string v1, "remote_search"

    goto :goto_4f

    :cond_66
    const-string v1, "local_search"

    goto :goto_4f

    :goto_69
    invoke-virtual {p3}, Lio/branch/search/BranchBaseLinkResult;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_71

    move-object v10, v1

    goto :goto_88

    :cond_71
    invoke-virtual {p1}, Lio/branch/search/v4;->b()Lio/branch/search/u4;

    move-result-object p1

    sget-object v1, Lio/branch/search/w4;->d:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v10, :cond_83

    if-eq p1, v9, :cond_83

    move-object v10, v2

    goto :goto_88

    :cond_83
    invoke-static {p3}, Lio/branch/search/x4;->a(Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object p1

    move-object v10, p1

    :goto_88
    iget-object p0, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->e:Lio/branch/search/internal/ui/ExtraResolver;

    if-eqz p0, :cond_91

    invoke-static {p0, p2, p3}, Lio/branch/search/t4;->a(Lio/branch/search/internal/ui/ExtraResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/BranchExtra;

    move-result-object p0

    goto :goto_92

    :cond_91
    move-object p0, v2

    :goto_92
    move-object v1, v0

    move-object v2, p3

    move-object v9, v11

    move-object v11, p0

    invoke-direct/range {v1 .. v11}, Lio/branch/search/ui/BranchEntity$LinkEntity;-><init>(Lio/branch/search/BranchBaseLinkResult;Ljava/lang/String;Ljava/lang/String;ZLio/branch/search/ui/ImageLoadingStrategy;Lio/branch/search/ui/ImageLoadingStrategy;ZLjava/lang/String;Ljava/lang/String;Lio/branch/search/ui/BranchExtra;)V

    return-object v0
.end method

.method public static final a(Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;
    .registers 5

    const-string v0, "link"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lio/branch/search/BranchLinkResult;

    const-string v1, "app"

    const/4 v2, 0x0

    if-eqz v0, :cond_5d

    check-cast p0, Lio/branch/search/BranchLinkResult;

    invoke-virtual {p0}, Lio/branch/search/BranchLinkResult;->getType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.String).toLowerCase()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1f

    :cond_1e
    move-object p0, v2

    :goto_1f
    if-nez p0, :cond_22

    goto :goto_64

    :cond_22
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v3, -0x5fc3fc12

    if-eq v0, v3, :cond_51

    if-eqz v0, :cond_48

    const v2, 0x17a21

    if-eq v0, v2, :cond_41

    const v1, 0x40d9ff54

    if-eq v0, v1, :cond_38

    goto :goto_5a

    :cond_38
    const-string v0, "app option"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5a

    goto :goto_61

    :cond_41
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5a

    goto :goto_65

    :cond_48
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5a

    goto :goto_64

    :cond_51
    const-string v0, "app:option"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5a

    goto :goto_61

    :cond_5a
    :goto_5a
    const-string v1, "content"

    goto :goto_65

    :cond_5d
    instance-of p0, p0, Lio/branch/search/BranchLocalLinkResult;

    if-eqz p0, :cond_64

    :goto_61
    const-string v1, "shortcut"

    goto :goto_65

    :cond_64
    :goto_64
    move-object v1, v2

    :goto_65
    return-object v1
.end method

.method public static final a(Lio/branch/search/internal/ui/AppEntityResolver;Lio/branch/search/v4;Lio/branch/search/BranchBaseAppResult;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/internal/ui/AppEntityResolver;",
            "Lio/branch/search/v4;",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;)",
            "Ljava/util/List<",
            "Lio/branch/search/ui/BranchEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$resolve"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->isAd()Z

    move-result v1

    if-eqz v1, :cond_19

    :goto_15
    sget-object p0, Li4/y;->a:Li4/y;

    goto/16 :goto_bc

    :cond_19
    invoke-virtual {p1}, Lio/branch/search/v4;->c()Lio/branch/search/m;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/branch/search/Util;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_b1

    new-instance v1, Lio/branch/search/ui/BranchEntity$AppEntity;

    iget-object v2, p0, Lio/branch/search/internal/ui/AppEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Lio/branch/search/t4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lio/branch/search/internal/ui/AppEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    if-eqz v2, :cond_42

    invoke-static {v2, p2, v3}, Lio/branch/search/t4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_43

    :cond_42
    move-object v5, v3

    :goto_43
    iget-object v2, p0, Lio/branch/search/internal/ui/AppEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    invoke-virtual {p1}, Lio/branch/search/v4;->d()Lio/branch/search/p5;

    move-result-object v6

    invoke-static {v2, v6, p2, v3}, Lio/branch/search/t4;->a(Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/p5;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v7

    iget-object v2, p0, Lio/branch/search/internal/ui/AppEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    if-eqz v2, :cond_5b

    invoke-virtual {p1}, Lio/branch/search/v4;->d()Lio/branch/search/p5;

    move-result-object v6

    invoke-static {v2, v6, p2, v3}, Lio/branch/search/t4;->a(Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/p5;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v2

    move-object v8, v2

    goto :goto_5c

    :cond_5b
    move-object v8, v3

    :goto_5c
    instance-of v9, p2, Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getContainerType()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    const/4 v10, 0x1

    if-eqz v2, :cond_68

    :goto_66
    move-object v11, v2

    goto :goto_80

    :cond_68
    invoke-virtual {p1}, Lio/branch/search/v4;->b()Lio/branch/search/u4;

    move-result-object v2

    sget-object v11, Lio/branch/search/w4;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v11, v2

    if-eq v2, v10, :cond_7d

    if-eq v2, v6, :cond_7a

    move-object v11, v3

    goto :goto_80

    :cond_7a
    const-string v2, "remote_search"

    goto :goto_66

    :cond_7d
    const-string v2, "local_search"

    goto :goto_66

    :goto_80
    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_88

    move-object v0, v2

    goto :goto_99

    :cond_88
    invoke-virtual {p1}, Lio/branch/search/v4;->b()Lio/branch/search/u4;

    move-result-object p1

    sget-object v2, Lio/branch/search/w4;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v10, :cond_99

    if-eq p1, v6, :cond_99

    move-object v0, v3

    :cond_99
    :goto_99
    iget-object p0, p0, Lio/branch/search/internal/ui/AppEntityResolver;->e:Lio/branch/search/internal/ui/ExtraResolver;

    if-eqz p0, :cond_a3

    invoke-static {p0, p2, v3}, Lio/branch/search/t4;->a(Lio/branch/search/internal/ui/ExtraResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/BranchExtra;

    move-result-object p0

    move-object v12, p0

    goto :goto_a4

    :cond_a3
    move-object v12, v3

    :goto_a4
    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, p2

    move-object v10, v11

    move-object v11, v0

    invoke-direct/range {v2 .. v12}, Lio/branch/search/ui/BranchEntity$AppEntity;-><init>(Lio/branch/search/BranchBaseAppResult;Ljava/lang/String;Ljava/lang/String;ZLio/branch/search/ui/ImageLoadingStrategy;Lio/branch/search/ui/ImageLoadingStrategy;ZLjava/lang/String;Ljava/lang/String;Lio/branch/search/ui/BranchExtra;)V

    invoke-static {v1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_bc

    :cond_b1
    invoke-virtual {p1}, Lio/branch/search/v4;->g()Lio/branch/search/p0;

    move-result-object p0

    const-string p1, "Unable to launch app"

    invoke-virtual {p0, p2, p1}, Lio/branch/search/p0;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    goto/16 :goto_15

    :goto_bc
    return-object p0
.end method

.method public static final a(Lio/branch/search/internal/ui/ContainerResolver;Ljava/util/List;Lio/branch/search/v4;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/internal/ui/ContainerResolver;",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;",
            "Lio/branch/search/v4;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/ui/BranchContainer;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$resolve"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v3}, Lio/branch/search/BranchBaseAppResult;->getContainerType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_37
    instance-of p1, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;

    const/4 v2, 0x0

    if-eqz p1, :cond_e3

    move-object p1, p0

    check-cast p1, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;

    iget-object v0, p1, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->c:Ljava/lang/Integer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_84

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v5, p1, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->c:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ly4/h;->e(II)Ly4/d;

    move-result-object v0

    const-string v5, "<this>"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "indices"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ly4/d;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6a

    sget-object v0, Li4/y;->a:Li4/y;

    goto :goto_83

    :cond_6a
    invoke-virtual {v0}, Ly4/d;->h()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0}, Ly4/d;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v1, v5, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_83
    move-object v1, v0

    :cond_84
    iget-object v0, p1, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lio/branch/search/v4;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-interface {v5, p2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_99
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v6}, Lio/branch/search/BranchBaseAppResult;->isAd()Z

    move-result v7

    if-eqz v7, :cond_ce

    invoke-virtual {p2, v3}, Lio/branch/search/v4;->a(Z)V

    invoke-virtual {p2}, Lio/branch/search/v4;->a()Lio/branch/search/internal/ui/AdLogic;

    move-result-object v7

    invoke-virtual {v7}, Lio/branch/search/internal/ui/AdLogic;->a()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v7

    invoke-virtual {v6}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "it.links[0]"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lio/branch/search/BranchBaseLinkResult;

    invoke-static {v7, p2, v6, v8}, Lio/branch/search/x4;->a(Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/v4;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/BranchEntity$LinkEntity;

    move-result-object v6

    invoke-static {v6}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_d4

    :cond_ce
    iget-object v7, p1, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->b:Lio/branch/search/internal/ui/AppEntityResolver;

    invoke-static {v7, p2, v6}, Lio/branch/search/x4;->a(Lio/branch/search/internal/ui/AppEntityResolver;Lio/branch/search/v4;Lio/branch/search/BranchBaseAppResult;)Ljava/util/List;

    move-result-object v6

    :goto_d4
    invoke-static {v5, v6}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_99

    :cond_d8
    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver;->c()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lio/branch/search/r4;

    invoke-direct {p1, v0, v2, v5, p0}, Lio/branch/search/r4;-><init>(Ljava/lang/String;Lio/branch/search/ui/ImageLoadingStrategy;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_16b

    :cond_e3
    instance-of p1, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    const-string v3, "app"

    if-eqz p1, :cond_136

    new-instance p1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/BranchBaseAppResult;

    new-instance v5, Lio/branch/search/r4;

    move-object v6, p0

    check-cast v6, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    iget-object v7, v6, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    if-eqz v7, :cond_112

    invoke-static {v7, v4, v2}, Lio/branch/search/t4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object v7

    goto :goto_113

    :cond_112
    move-object v7, v2

    :goto_113
    iget-object v8, v6, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->b:Lio/branch/search/internal/ui/ImageResolver;

    if-eqz v8, :cond_120

    invoke-virtual {p2}, Lio/branch/search/v4;->d()Lio/branch/search/p5;

    move-result-object v9

    invoke-static {v8, v9, v4, v2}, Lio/branch/search/t4;->a(Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/p5;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v8

    goto :goto_121

    :cond_120
    move-object v8, v2

    :goto_121
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, p2, v4}, Lio/branch/search/s4$a;->a(Lio/branch/search/s4;Lio/branch/search/v4;Lio/branch/search/BranchBaseAppResult;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v8, v4, v6}, Lio/branch/search/r4;-><init>(Ljava/lang/String;Lio/branch/search/ui/ImageLoadingStrategy;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f8

    :cond_136
    instance-of p1, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    if-eqz p1, :cond_170

    move-object p1, p0

    check-cast p1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    iget-object v4, p1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_148
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_162

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/branch/search/BranchBaseAppResult;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, v6}, Lio/branch/search/s4$a;->a(Lio/branch/search/s4;Lio/branch/search/v4;Lio/branch/search/BranchBaseAppResult;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_148

    :cond_162
    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver;->c()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lio/branch/search/r4;

    invoke-direct {p1, v4, v2, v5, p0}, Lio/branch/search/r4;-><init>(Ljava/lang/String;Lio/branch/search/ui/ImageLoadingStrategy;Ljava/util/List;Ljava/lang/String;)V

    :goto_16b
    invoke-static {p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_16f
    return-object p1

    :cond_170
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method

.method public static final a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/m;Ljava/util/List;Lio/branch/search/p0;Lio/branch/search/u4;Z)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/internal/ui/UISkeletonResolver;",
            "Lio/branch/search/m;",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;",
            "Lio/branch/search/p0;",
            "Lio/branch/search/u4;",
            "Z)",
            "Ljava/util/List<",
            "Lio/branch/search/ui/BranchContainer;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    const-string v2, "$this$resolve"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "branchSearch"

    move-object v4, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "apps"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "virtualRequest"

    move-object/from16 v5, p3

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "api"

    move-object/from16 v9, p4

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lio/branch/search/v4;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/UISkeletonResolver;->a()Lio/branch/search/internal/ui/AdLogic;

    move-result-object v6

    sget-object v7, Lio/branch/search/x4$a;->a:Lio/branch/search/x4$a;

    new-instance v8, Lio/branch/search/p5;

    invoke-virtual {p1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v3

    const-string v10, "branchSearch.applicationContext"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v3}, Lio/branch/search/p5;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    const/16 v11, 0x40

    const/4 v12, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lio/branch/search/v4;-><init>(Lio/branch/search/m;Lio/branch/search/p0;Lio/branch/search/internal/ui/AdLogic;Lkotlin/jvm/functions/Function2;Lio/branch/search/p5;Lio/branch/search/u4;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move/from16 v3, p5

    invoke-static {p0, p2, v2, v3}, Lio/branch/search/x4;->a(Lio/branch/search/internal/ui/UISkeletonResolver;Ljava/util/List;Lio/branch/search/v4;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/m;Ljava/util/List;Lio/branch/search/p0;Lio/branch/search/u4;ZILjava/lang/Object;)Ljava/util/List;
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    :cond_5
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lio/branch/search/x4;->a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/m;Ljava/util/List;Lio/branch/search/p0;Lio/branch/search/u4;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lio/branch/search/internal/ui/UISkeletonResolver;Ljava/util/List;Lio/branch/search/v4;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/internal/ui/UISkeletonResolver;",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;",
            "Lio/branch/search/v4;",
            "Z)",
            "Ljava/util/List<",
            "Lio/branch/search/ui/BranchContainer;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$resolve"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visitor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_f
    instance-of v0, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    if-eqz v0, :cond_a1

    check-cast p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    iget-object p0, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/internal/ui/ContainerResolver;

    invoke-static {v1, p1, p2}, Lio/branch/search/x4;->a(Lio/branch/search/internal/ui/ContainerResolver;Ljava/util/List;Lio/branch/search/v4;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_20

    :cond_34
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3d
    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/branch/search/ui/BranchContainer;

    invoke-interface {v1}, Lio/branch/search/ui/BranchContainer;->getContent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_56

    const/4 v1, 0x1

    goto :goto_57

    :cond_56
    const/4 v1, 0x0

    :goto_57
    if-eqz v1, :cond_3d

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_5d
    if-eqz p3, :cond_60

    goto :goto_c4

    :cond_60
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_64
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/branch/search/ui/BranchContainer;

    invoke-interface {p3}, Lio/branch/search/ui/BranchContainer;->getContent()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_78
    :goto_78
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/ui/BranchEntity;

    instance-of v1, v0, Lio/branch/search/ui/BranchEntity$AppEntity;

    if-eqz v1, :cond_94

    invoke-virtual {p2}, Lio/branch/search/v4;->g()Lio/branch/search/p0;

    move-result-object v1

    check-cast v0, Lio/branch/search/ui/BranchEntity$AppEntity;

    iget-object v0, v0, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    :goto_90
    invoke-virtual {v1, v0}, Lio/branch/search/p0;->b(Lio/branch/search/AnalyticsEntity;)V

    goto :goto_78

    :cond_94
    instance-of v1, v0, Lio/branch/search/ui/BranchEntity$LinkEntity;

    if-eqz v1, :cond_78

    invoke-virtual {p2}, Lio/branch/search/v4;->g()Lio/branch/search/p0;

    move-result-object v1

    check-cast v0, Lio/branch/search/ui/BranchEntity$LinkEntity;

    iget-object v0, v0, Lio/branch/search/ui/BranchEntity$LinkEntity;->a:Lio/branch/search/BranchBaseLinkResult;

    goto :goto_90

    :cond_a1
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_a7} :catch_a7

    :catch_a7
    move-exception p0

    invoke-virtual {p2}, Lio/branch/search/v4;->c()Lio/branch/search/m;

    move-result-object p1

    invoke-virtual {p2}, Lio/branch/search/v4;->g()Lio/branch/search/p0;

    move-result-object p2

    iget-object p2, p2, Lio/branch/search/p0;->f:Ljava/lang/String;

    new-instance p3, Lh4/j;

    const-string v0, "request_id"

    invoke-direct {p3, v0, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "UISkeletonResolver.resolve"

    invoke-virtual {p1, p3, p0, p2}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    sget-object p0, Li4/y;->a:Li4/y;

    :cond_c4
    :goto_c4
    return-object p0
.end method

.method public static final a(Lio/branch/search/v4;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/v4;",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;)",
            "Ljava/util/List<",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;"
        }
    .end annotation

    const-string v0, "$this$adjustExistingAd"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appsRaw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p0}, Lio/branch/search/v4;->f()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v4}, Lio/branch/search/BranchBaseAppResult;->isAd()Z

    move-result v4

    if-eqz v4, :cond_2f

    move v2, v3

    :cond_2f
    if-nez v2, :cond_13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_35
    invoke-virtual {p0}, Lio/branch/search/v4;->a()Lio/branch/search/internal/ui/AdLogic;

    move-result-object p1

    instance-of v1, p1, Lio/branch/search/internal/ui/AdLogic$Static;

    if-eqz v1, :cond_3f

    goto/16 :goto_b2

    :cond_3f
    instance-of p1, p1, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    if-eqz p1, :cond_b3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_47
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->isAd()Z

    move-result v1

    if-eqz v1, :cond_5b

    goto :goto_5f

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_5e
    move v2, v4

    :goto_5f
    if-ne v2, v4, :cond_62

    goto :goto_b2

    :cond_62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_69

    goto :goto_70

    :cond_69
    if-nez v2, :cond_70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_71

    :cond_70
    :goto_70
    const/4 p1, 0x0

    :goto_71
    if-eqz p1, :cond_b2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p1}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_92

    goto :goto_b2

    :cond_92
    invoke-static {v0}, Li4/v;->j0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p0}, Lio/branch/search/v4;->a()Lio/branch/search/internal/ui/AdLogic;

    move-result-object p0

    check-cast p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    iget p0, p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->a:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p1, p0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_b2
    :goto_b2
    return-object v0

    :cond_b3
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method
