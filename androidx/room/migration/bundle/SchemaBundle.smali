.class public Landroidx/room/migration/bundle/SchemaBundle;
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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/migration/bundle/SchemaBundle$EntityTypeAdapterFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/room/migration/bundle/SchemaEquality<",
        "Landroidx/room/migration/bundle/SchemaBundle;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final GSON:Lcom/google/gson/Gson;

.field public static final LATEST_FORMAT:I = 0x1


# instance fields
.field private mDatabase:Landroidx/room/migration/bundle/DatabaseBundle;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "database"
    .end annotation
.end field

.field private mFormatVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "formatVersion"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    new-instance v1, Landroidx/room/migration/bundle/SchemaBundle$EntityTypeAdapterFactory;

    invoke-direct {v1}, Landroidx/room/migration/bundle/SchemaBundle$EntityTypeAdapterFactory;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Landroidx/room/migration/bundle/SchemaBundle;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(ILandroidx/room/migration/bundle/DatabaseBundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/room/migration/bundle/SchemaBundle;->mFormatVersion:I

    iput-object p2, p0, Landroidx/room/migration/bundle/SchemaBundle;->mDatabase:Landroidx/room/migration/bundle/DatabaseBundle;

    return-void
.end method

.method public static deserialize(Ljava/io/InputStream;)Landroidx/room/migration/bundle/SchemaBundle;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :try_start_7
    sget-object v1, Landroidx/room/migration/bundle/SchemaBundle;->GSON:Lcom/google/gson/Gson;

    const-class v2, Landroidx/room/migration/bundle/SchemaBundle;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/migration/bundle/SchemaBundle;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroidx/room/migration/bundle/SchemaBundle;->getDatabase()Landroidx/room/migration/bundle/DatabaseBundle;

    move-result-object v2
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_28

    if-eqz v2, :cond_20

    invoke-static {v0}, Landroidx/room/migration/bundle/SchemaBundle;->safeClose(Ljava/io/Closeable;)V

    invoke-static {p0}, Landroidx/room/migration/bundle/SchemaBundle;->safeClose(Ljava/io/Closeable;)V

    return-object v1

    :cond_20
    :try_start_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid schema file"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v1

    invoke-static {v0}, Landroidx/room/migration/bundle/SchemaBundle;->safeClose(Ljava/io/Closeable;)V

    invoke-static {p0}, Landroidx/room/migration/bundle/SchemaBundle;->safeClose(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_5

    :catchall_5
    :cond_5
    return-void
.end method

.method public static serialize(Landroidx/room/migration/bundle/SchemaBundle;Ljava/io/File;)V
    .registers 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance p1, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    :try_start_d
    sget-object v1, Landroidx/room/migration/bundle/SchemaBundle;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_19

    invoke-static {p1}, Landroidx/room/migration/bundle/SchemaBundle;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v0}, Landroidx/room/migration/bundle/SchemaBundle;->safeClose(Ljava/io/Closeable;)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {p1}, Landroidx/room/migration/bundle/SchemaBundle;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v0}, Landroidx/room/migration/bundle/SchemaBundle;->safeClose(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public getDatabase()Landroidx/room/migration/bundle/DatabaseBundle;
    .registers 1

    iget-object p0, p0, Landroidx/room/migration/bundle/SchemaBundle;->mDatabase:Landroidx/room/migration/bundle/DatabaseBundle;

    return-object p0
.end method

.method public getFormatVersion()I
    .registers 1

    iget p0, p0, Landroidx/room/migration/bundle/SchemaBundle;->mFormatVersion:I

    return p0
.end method

.method public isSchemaEqual(Landroidx/room/migration/bundle/SchemaBundle;)Z
    .registers 4

    iget-object v0, p0, Landroidx/room/migration/bundle/SchemaBundle;->mDatabase:Landroidx/room/migration/bundle/DatabaseBundle;

    iget-object v1, p1, Landroidx/room/migration/bundle/SchemaBundle;->mDatabase:Landroidx/room/migration/bundle/DatabaseBundle;

    invoke-static {v0, v1}, Landroidx/room/migration/bundle/SchemaEqualityUtil;->checkSchemaEquality(Landroidx/room/migration/bundle/SchemaEquality;Landroidx/room/migration/bundle/SchemaEquality;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget p0, p0, Landroidx/room/migration/bundle/SchemaBundle;->mFormatVersion:I

    iget p1, p1, Landroidx/room/migration/bundle/SchemaBundle;->mFormatVersion:I

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

    check-cast p1, Landroidx/room/migration/bundle/SchemaBundle;

    invoke-virtual {p0, p1}, Landroidx/room/migration/bundle/SchemaBundle;->isSchemaEqual(Landroidx/room/migration/bundle/SchemaBundle;)Z

    move-result p0

    return p0
.end method
