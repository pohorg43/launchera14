.class public Landroidx/room/migration/bundle/FtsOptionsBundle;
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
        "Landroidx/room/migration/bundle/FtsOptionsBundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContentTable:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentTable"
    .end annotation
.end field

.field private final mLanguageIdColumnName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "languageIdColumnName"
    .end annotation
.end field

.field private final mMatchInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "matchInfo"
    .end annotation
.end field

.field private final mNotIndexedColumns:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notIndexedColumns"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferredOrder:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preferredOrder"
    .end annotation
.end field

.field private final mPrefixSizes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prefixSizes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTokenizer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tokenizer"
    .end annotation
.end field

.field private final mTokenizerArgs:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tokenizerArgs"
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
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mTokenizer:Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mTokenizerArgs:Ljava/util/List;

    iput-object p3, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mContentTable:Ljava/lang/String;

    iput-object p4, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mLanguageIdColumnName:Ljava/lang/String;

    iput-object p5, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mMatchInfo:Ljava/lang/String;

    iput-object p6, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mNotIndexedColumns:Ljava/util/List;

    iput-object p7, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mPrefixSizes:Ljava/util/List;

    iput-object p8, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mPreferredOrder:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentTable()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mContentTable:Ljava/lang/String;

    return-object p0
.end method

.method public isSchemaEqual(Landroidx/room/migration/bundle/FtsOptionsBundle;)Z
    .registers 4

    iget-object v0, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mTokenizer:Ljava/lang/String;

    iget-object v1, p1, Landroidx/room/migration/bundle/FtsOptionsBundle;->mTokenizer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mTokenizerArgs:Ljava/util/List;

    iget-object v1, p1, Landroidx/room/migration/bundle/FtsOptionsBundle;->mTokenizerArgs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mContentTable:Ljava/lang/String;

    iget-object v1, p1, Landroidx/room/migration/bundle/FtsOptionsBundle;->mContentTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mLanguageIdColumnName:Ljava/lang/String;

    iget-object v1, p1, Landroidx/room/migration/bundle/FtsOptionsBundle;->mLanguageIdColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mMatchInfo:Ljava/lang/String;

    iget-object v1, p1, Landroidx/room/migration/bundle/FtsOptionsBundle;->mMatchInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mNotIndexedColumns:Ljava/util/List;

    iget-object v1, p1, Landroidx/room/migration/bundle/FtsOptionsBundle;->mNotIndexedColumns:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mPrefixSizes:Ljava/util/List;

    iget-object v1, p1, Landroidx/room/migration/bundle/FtsOptionsBundle;->mPrefixSizes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object p0, p0, Landroidx/room/migration/bundle/FtsOptionsBundle;->mPreferredOrder:Ljava/lang/String;

    iget-object p1, p1, Landroidx/room/migration/bundle/FtsOptionsBundle;->mPreferredOrder:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_52

    const/4 p0, 0x1

    goto :goto_53

    :cond_52
    const/4 p0, 0x0

    :goto_53
    return p0
.end method

.method public bridge synthetic isSchemaEqual(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroidx/room/migration/bundle/FtsOptionsBundle;

    invoke-virtual {p0, p1}, Landroidx/room/migration/bundle/FtsOptionsBundle;->isSchemaEqual(Landroidx/room/migration/bundle/FtsOptionsBundle;)Z

    move-result p0

    return p0
.end method
