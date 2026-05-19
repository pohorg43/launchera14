.class public Landroidx/room/migration/bundle/PrimaryKeyBundle;
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
        "Landroidx/room/migration/bundle/PrimaryKeyBundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAutoGenerate:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "autoGenerate"
    .end annotation
.end field

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


# direct methods
.method public constructor <init>(ZLjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/room/migration/bundle/PrimaryKeyBundle;->mColumnNames:Ljava/util/List;

    iput-boolean p1, p0, Landroidx/room/migration/bundle/PrimaryKeyBundle;->mAutoGenerate:Z

    return-void
.end method


# virtual methods
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

    iget-object p0, p0, Landroidx/room/migration/bundle/PrimaryKeyBundle;->mColumnNames:Ljava/util/List;

    return-object p0
.end method

.method public isAutoGenerate()Z
    .registers 1

    iget-boolean p0, p0, Landroidx/room/migration/bundle/PrimaryKeyBundle;->mAutoGenerate:Z

    return p0
.end method

.method public isSchemaEqual(Landroidx/room/migration/bundle/PrimaryKeyBundle;)Z
    .registers 4

    iget-object v0, p0, Landroidx/room/migration/bundle/PrimaryKeyBundle;->mColumnNames:Ljava/util/List;

    iget-object v1, p1, Landroidx/room/migration/bundle/PrimaryKeyBundle;->mColumnNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean p0, p0, Landroidx/room/migration/bundle/PrimaryKeyBundle;->mAutoGenerate:Z

    iget-boolean p1, p1, Landroidx/room/migration/bundle/PrimaryKeyBundle;->mAutoGenerate:Z

    if-ne p0, p1, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public bridge synthetic isSchemaEqual(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroidx/room/migration/bundle/PrimaryKeyBundle;

    invoke-virtual {p0, p1}, Landroidx/room/migration/bundle/PrimaryKeyBundle;->isSchemaEqual(Landroidx/room/migration/bundle/PrimaryKeyBundle;)Z

    move-result p0

    return p0
.end method
