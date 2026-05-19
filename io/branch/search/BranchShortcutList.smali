.class public Lio/branch/search/BranchShortcutList;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Long;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/o3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/BranchShortcutList;->c:Ljava/util/List;

    iput-object p1, p0, Lio/branch/search/BranchShortcutList;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/BranchShortcutList;->b:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/o3;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchShortcutList;->c:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public add(Landroid/content/pm/ShortcutInfo;)V
    .registers 13
    .param p1  # Landroid/content/pm/ShortcutInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x19
    .end annotation

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_e
    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v1, p0, Lio/branch/search/BranchShortcutList;->c:Ljava/util/List;

    new-instance v10, Lio/branch/search/o3;

    iget-object v3, p0, Lio/branch/search/BranchShortcutList;->a:Ljava/lang/String;

    iget-object v4, p0, Lio/branch/search/BranchShortcutList;->b:Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/branch/search/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v8

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lio/branch/search/o3;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
