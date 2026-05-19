.class public Landroidx/room/migration/bundle/FieldBundle;
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
        "Landroidx/room/migration/bundle/FieldBundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAffinity:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "affinity"
    .end annotation
.end field

.field private mColumnName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "columnName"
    .end annotation
.end field

.field private mDefaultValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultValue"
    .end annotation
.end field

.field private mFieldPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fieldPath"
    .end annotation
.end field

.field private mNonNull:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notNull"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/room/migration/bundle/FieldBundle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/migration/bundle/FieldBundle;->mFieldPath:Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/migration/bundle/FieldBundle;->mColumnName:Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/migration/bundle/FieldBundle;->mAffinity:Ljava/lang/String;

    iput-boolean p4, p0, Landroidx/room/migration/bundle/FieldBundle;->mNonNull:Z

    iput-object p5, p0, Landroidx/room/migration/bundle/FieldBundle;->mDefaultValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAffinity()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/room/migration/bundle/FieldBundle;->mAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public getColumnName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/room/migration/bundle/FieldBundle;->mColumnName:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/room/migration/bundle/FieldBundle;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getFieldPath()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/room/migration/bundle/FieldBundle;->mFieldPath:Ljava/lang/String;

    return-object p0
.end method

.method public isNonNull()Z
    .registers 1

    iget-boolean p0, p0, Landroidx/room/migration/bundle/FieldBundle;->mNonNull:Z

    return p0
.end method

.method public isSchemaEqual(Landroidx/room/migration/bundle/FieldBundle;)Z
    .registers 5

    iget-boolean v0, p0, Landroidx/room/migration/bundle/FieldBundle;->mNonNull:Z

    iget-boolean v1, p1, Landroidx/room/migration/bundle/FieldBundle;->mNonNull:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    :cond_8
    iget-object v0, p0, Landroidx/room/migration/bundle/FieldBundle;->mColumnName:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v1, p1, Landroidx/room/migration/bundle/FieldBundle;->mColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_19

    :cond_15
    iget-object v0, p1, Landroidx/room/migration/bundle/FieldBundle;->mColumnName:Ljava/lang/String;

    if-eqz v0, :cond_1a

    :goto_19
    return v2

    :cond_1a
    iget-object v0, p0, Landroidx/room/migration/bundle/FieldBundle;->mDefaultValue:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v1, p1, Landroidx/room/migration/bundle/FieldBundle;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_2b

    :cond_27
    iget-object v0, p1, Landroidx/room/migration/bundle/FieldBundle;->mDefaultValue:Ljava/lang/String;

    if-eqz v0, :cond_2c

    :goto_2b
    return v2

    :cond_2c
    iget-object p0, p0, Landroidx/room/migration/bundle/FieldBundle;->mAffinity:Ljava/lang/String;

    if-eqz p0, :cond_37

    iget-object p1, p1, Landroidx/room/migration/bundle/FieldBundle;->mAffinity:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_3c

    :cond_37
    iget-object p0, p1, Landroidx/room/migration/bundle/FieldBundle;->mAffinity:Ljava/lang/String;

    if-nez p0, :cond_3c

    const/4 v2, 0x1

    :cond_3c
    :goto_3c
    return v2
.end method

.method public bridge synthetic isSchemaEqual(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroidx/room/migration/bundle/FieldBundle;

    invoke-virtual {p0, p1}, Landroidx/room/migration/bundle/FieldBundle;->isSchemaEqual(Landroidx/room/migration/bundle/FieldBundle;)Z

    move-result p0

    return p0
.end method
