.class public Landroidx/room/migration/bundle/ForeignKeyBundle;
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
        "Landroidx/room/migration/bundle/ForeignKeyBundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mColumns:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "columns"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDelete:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onDelete"
    .end annotation
.end field

.field private mOnUpdate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onUpdate"
    .end annotation
.end field

.field private mReferencedColumns:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "referencedColumns"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTable:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "table"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/migration/bundle/ForeignKeyBundle;->mTable:Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/migration/bundle/ForeignKeyBundle;->mOnDelete:Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/migration/bundle/ForeignKeyBundle;->mOnUpdate:Ljava/lang/String;

    iput-object p4, p0, Landroidx/room/migration/bundle/ForeignKeyBundle;->mColumns:Ljava/util/List;

    iput-object p5, p0, Landroidx/room/migration/bundle/ForeignKeyBundle;->mReferencedColumns:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getColumns()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/migration/bundle/ForeignKeyBundle;->mColumns:Ljava/util/List;

    return-object p0
.end method

.method public getOnDelete()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/room/migration/bundle/ForeignKeyBundle;->mOnDelete:Ljava/lang/String;

    return-object p0
.end method

.method public getOnUpdate()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/room/migration/bundle/ForeignKeyBundle;->mOnUpdate:Ljava/lang/String;

    return-object p0
.end method

.method public getReferencedColumns()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/migration/bundle/ForeignKeyBundle;->mReferencedColumns:Ljava/util/List;

    return-object p0
.end method

.method public getTable()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/room/migration/bundle/ForeignKeyBundle;->mTable:Ljava/lang/String;

    return-object p0
.end method

.method public isSchemaEqual(Landroidx/room/migration/bundle/ForeignKeyBundle;)Z
    .registers 5

    iget-object v0, p0, Landroidx/room/migration/bundle/ForeignKeyBundle;->mTable:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v2, p1, Landroidx/room/migration/bundle/ForeignKeyBundle;->mTable:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_12

    :cond_e
    iget-object v0, p1, Landroidx/room/migration/bundle/ForeignKeyBundle;->mTable:Ljava/lang/String;

    if-eqz v0, :cond_13

    :goto_12
    return v1

    :cond_13
    iget-object v0, p0, Landroidx/room/migration/bundle/ForeignKeyBundle;->mOnDelete:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v2, p1, Landroidx/room/migration/bundle/ForeignKeyBundle;->mOnDelete:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_24

    :cond_20
    iget-object v0, p1, Landroidx/room/migration/bundle/ForeignKeyBundle;->mOnDelete:Ljava/lang/String;

    if-eqz v0, :cond_25

    :goto_24
    return v1

    :cond_25
    iget-object v0, p0, Landroidx/room/migration/bundle/ForeignKeyBundle;->mOnUpdate:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v2, p1, Landroidx/room/migration/bundle/ForeignKeyBundle;->mOnUpdate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_36

    :cond_32
    iget-object v0, p1, Landroidx/room/migration/bundle/ForeignKeyBundle;->mOnUpdate:Ljava/lang/String;

    if-eqz v0, :cond_37

    :goto_36
    return v1

    :cond_37
    iget-object v0, p0, Landroidx/room/migration/bundle/ForeignKeyBundle;->mColumns:Ljava/util/List;

    iget-object v2, p1, Landroidx/room/migration/bundle/ForeignKeyBundle;->mColumns:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object p0, p0, Landroidx/room/migration/bundle/ForeignKeyBundle;->mReferencedColumns:Ljava/util/List;

    iget-object p1, p1, Landroidx/room/migration/bundle/ForeignKeyBundle;->mReferencedColumns:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4c

    const/4 v1, 0x1

    :cond_4c
    return v1
.end method

.method public bridge synthetic isSchemaEqual(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroidx/room/migration/bundle/ForeignKeyBundle;

    invoke-virtual {p0, p1}, Landroidx/room/migration/bundle/ForeignKeyBundle;->isSchemaEqual(Landroidx/room/migration/bundle/ForeignKeyBundle;)Z

    move-result p0

    return p0
.end method
