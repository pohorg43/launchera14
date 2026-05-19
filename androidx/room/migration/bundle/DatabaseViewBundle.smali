.class public Landroidx/room/migration/bundle/DatabaseViewBundle;
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
        "Landroidx/room/migration/bundle/DatabaseViewBundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mCreateSql:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createSql"
    .end annotation
.end field

.field private mViewName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "viewName"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/migration/bundle/DatabaseViewBundle;->mViewName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/migration/bundle/DatabaseViewBundle;->mCreateSql:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createView()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/room/migration/bundle/DatabaseViewBundle;->mCreateSql:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/room/migration/bundle/DatabaseViewBundle;->getViewName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/room/migration/bundle/BundleUtil;->replaceViewName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCreateSql()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/room/migration/bundle/DatabaseViewBundle;->mCreateSql:Ljava/lang/String;

    return-object p0
.end method

.method public getViewName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/room/migration/bundle/DatabaseViewBundle;->mViewName:Ljava/lang/String;

    return-object p0
.end method

.method public isSchemaEqual(Landroidx/room/migration/bundle/DatabaseViewBundle;)Z
    .registers 4

    iget-object v0, p0, Landroidx/room/migration/bundle/DatabaseViewBundle;->mViewName:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v1, p1, Landroidx/room/migration/bundle/DatabaseViewBundle;->mViewName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Landroidx/room/migration/bundle/DatabaseViewBundle;->mCreateSql:Ljava/lang/String;

    if-eqz p0, :cond_1a

    iget-object p1, p1, Landroidx/room/migration/bundle/DatabaseViewBundle;->mCreateSql:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public bridge synthetic isSchemaEqual(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroidx/room/migration/bundle/DatabaseViewBundle;

    invoke-virtual {p0, p1}, Landroidx/room/migration/bundle/DatabaseViewBundle;->isSchemaEqual(Landroidx/room/migration/bundle/DatabaseViewBundle;)Z

    move-result p0

    return p0
.end method
