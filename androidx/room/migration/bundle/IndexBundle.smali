.class public Landroidx/room/migration/bundle/IndexBundle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/room/migration/bundle/SchemaEquality;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/room/migration/bundle/SchemaEquality<",
        "Landroidx/room/migration/bundle/IndexBundle;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_PREFIX:Ljava/lang/String; = "index_"


# instance fields
.field private mColumnNames:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "columnNames"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateSql:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createSql"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private mOrders:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orders"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnique:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unique"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/room/migration/bundle/IndexBundle;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/migration/bundle/IndexBundle;->mName:Ljava/lang/String;

    iput-boolean p2, p0, Landroidx/room/migration/bundle/IndexBundle;->mUnique:Z

    iput-object p3, p0, Landroidx/room/migration/bundle/IndexBundle;->mColumnNames:Ljava/util/List;

    iput-object p4, p0, Landroidx/room/migration/bundle/IndexBundle;->mOrders:Ljava/util/List;

    iput-object p5, p0, Landroidx/room/migration/bundle/IndexBundle;->mCreateSql:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/migration/bundle/IndexBundle;->mCreateSql:Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/room/migration/bundle/BundleUtil;->replaceTableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getColumnNames()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/migration/bundle/IndexBundle;->mColumnNames:Ljava/util/List;

    return-object p0
.end method

.method public getCreateSql(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Landroidx/room/migration/bundle/IndexBundle;->mCreateSql:Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/room/migration/bundle/BundleUtil;->replaceTableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/room/migration/bundle/IndexBundle;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getOrders()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/migration/bundle/IndexBundle;->mOrders:Ljava/util/List;

    return-object p0
.end method

.method public isSchemaEqual(Landroidx/room/migration/bundle/IndexBundle;)Z
    .registers 5
    .param p1  # Landroidx/room/migration/bundle/IndexBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Landroidx/room/migration/bundle/IndexBundle;->mUnique:Z

    iget-boolean v1, p1, Landroidx/room/migration/bundle/IndexBundle;->mUnique:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    :cond_8
    iget-object v0, p0, Landroidx/room/migration/bundle/IndexBundle;->mName:Ljava/lang/String;

    const-string v1, "index_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p1, Landroidx/room/migration/bundle/IndexBundle;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    return v2

    :cond_1b
    iget-object v0, p1, Landroidx/room/migration/bundle/IndexBundle;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    return v2

    :cond_24
    iget-object v0, p0, Landroidx/room/migration/bundle/IndexBundle;->mName:Ljava/lang/String;

    iget-object v1, p1, Landroidx/room/migration/bundle/IndexBundle;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    return v2

    :cond_2f
    iget-object v0, p0, Landroidx/room/migration/bundle/IndexBundle;->mColumnNames:Ljava/util/List;

    if-eqz v0, :cond_3c

    iget-object v1, p1, Landroidx/room/migration/bundle/IndexBundle;->mColumnNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_40

    :cond_3c
    iget-object v0, p1, Landroidx/room/migration/bundle/IndexBundle;->mColumnNames:Ljava/util/List;

    if-eqz v0, :cond_41

    :goto_40
    return v2

    :cond_41
    iget-object v0, p0, Landroidx/room/migration/bundle/IndexBundle;->mColumnNames:Ljava/util/List;

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_4b

    :cond_4a
    move v0, v2

    :goto_4b
    iget-object v1, p0, Landroidx/room/migration/bundle/IndexBundle;->mOrders:Ljava/util/List;

    if-eqz v1, :cond_59

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_56

    goto :goto_59

    :cond_56
    iget-object p0, p0, Landroidx/room/migration/bundle/IndexBundle;->mOrders:Ljava/util/List;

    goto :goto_63

    :cond_59
    :goto_59
    sget-object p0, Landroidx/room/Index$Order;->ASC:Landroidx/room/Index$Order;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_63
    iget-object v1, p1, Landroidx/room/migration/bundle/IndexBundle;->mOrders:Ljava/util/List;

    if-eqz v1, :cond_71

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6e

    goto :goto_71

    :cond_6e
    iget-object p1, p1, Landroidx/room/migration/bundle/IndexBundle;->mOrders:Ljava/util/List;

    goto :goto_7b

    :cond_71
    :goto_71
    sget-object p1, Landroidx/room/Index$Order;->ASC:Landroidx/room/Index$Order;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_7b
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_82

    return v2

    :cond_82
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isSchemaEqual(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroidx/room/migration/bundle/IndexBundle;

    invoke-virtual {p0, p1}, Landroidx/room/migration/bundle/IndexBundle;->isSchemaEqual(Landroidx/room/migration/bundle/IndexBundle;)Z

    move-result p0

    return p0
.end method

.method public isUnique()Z
    .registers 1

    iget-boolean p0, p0, Landroidx/room/migration/bundle/IndexBundle;->mUnique:Z

    return p0
.end method
