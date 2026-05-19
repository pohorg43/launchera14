.class public Lio/branch/search/f2$d;
.super Lio/branch/search/f2$e;
.source ""

# interfaces
.implements Lio/branch/search/f2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/f2$e;",
        "Lio/branch/search/f2<",
        "Lio/branch/search/m1;",
        "Ljava/util/List<",
        "Lio/branch/search/BranchLocalAppResult;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/branch/search/m;Lio/branch/search/p0;Lio/branch/search/l;)V
    .registers 4
    .param p1  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/p0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lio/branch/search/f2$e;-><init>(Lio/branch/search/m;Lio/branch/search/p0;Lio/branch/search/l;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    if-nez p1, :cond_7

    if-nez p2, :cond_7

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_d

    move v1, p0

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    if-nez p2, :cond_11

    goto :goto_12

    :cond_11
    move p0, v0

    :goto_12
    xor-int/2addr p0, v1

    if-eqz p0, :cond_18

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_18
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/f2$d;->c(Landroid/database/Cursor;)Lio/branch/search/m1;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lio/branch/search/f2$d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lio/branch/search/Util;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public a(Lio/branch/search/BranchLocalAppResult;)Z
    .registers 3
    .param p1  # Lio/branch/search/BranchLocalAppResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/f2$e;->j:Lio/branch/search/m;

    invoke-virtual {p0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lio/branch/search/Util;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/m1;",
            ">;)",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/m1;

    iget-object v2, p0, Lio/branch/search/f2$e;->f:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lio/branch/search/m1;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lio/branch/search/f2$e;->d:Lio/branch/search/p0;

    invoke-virtual {v1}, Lio/branch/search/m1;->a()Lio/branch/search/BranchLocalAppResult;

    move-result-object v1

    const-string v3, "failed image validation"

    goto :goto_61

    :cond_26
    invoke-virtual {v1}, Lio/branch/search/m1;->a()Lio/branch/search/BranchLocalAppResult;

    move-result-object v1

    if-nez v1, :cond_2d

    goto :goto_9

    :cond_2d
    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_65

    invoke-virtual {p0, v1}, Lio/branch/search/f2$d;->a(Lio/branch/search/BranchLocalAppResult;)Z

    move-result v2

    if-nez v2, :cond_65

    iget-object v2, p0, Lio/branch/search/f2$e;->d:Lio/branch/search/p0;

    const-string v3, "no links & "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/branch/search/f2$e;->j:Lio/branch/search/m;

    invoke-virtual {v4}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lio/branch/search/f2$d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_58

    const-string v4, "not installed"

    goto :goto_5a

    :cond_58
    const-string v4, "not launchable"

    :goto_5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_61
    invoke-virtual {v2, v1, v3}, Lio/branch/search/p0;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    goto :goto_9

    :cond_65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6c

    goto :goto_b8

    :cond_6c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {v2}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-virtual {v2}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-virtual {v2}, Lio/branch/search/BranchBaseAppResult;->getContainerType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getContainerType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lio/branch/search/f2$d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b8

    iget-object v3, p0, Lio/branch/search/f2$e;->d:Lio/branch/search/p0;

    invoke-virtual {v3, v1}, Lio/branch/search/p0;->a(Lio/branch/search/AnalyticsEntity;)V

    invoke-virtual {v2}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9

    :cond_b8
    :goto_b8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_bd
    return-object v0
.end method

.method public c(Landroid/database/Cursor;)Lio/branch/search/m1;
    .registers 4

    iget-object v0, p0, Lio/branch/search/f2$e;->j:Lio/branch/search/m;

    invoke-virtual {p0, p1, v0}, Lio/branch/search/f2$e;->a(Landroid/database/Cursor;Lio/branch/search/m;)Lio/branch/search/BranchLocalAppResult;

    move-result-object v0

    new-instance v1, Lio/branch/search/m1;

    invoke-virtual {p0, p1}, Lio/branch/search/f2$e;->b(Landroid/database/Cursor;)Z

    move-result p0

    invoke-direct {v1, v0, p0}, Lio/branch/search/m1;-><init>(Lio/branch/search/BranchLocalAppResult;Z)V

    return-object v1
.end method
