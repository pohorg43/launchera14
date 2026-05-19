.class public Lcom/android/launcher/provider/OplusShareFileProvider;
.super Landroidx/core/content/FileProvider;
.source ""


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/core/content/FileProvider;-><init>()V

    const-string v0, "OplusShareFileProvider"

    iput-object v0, p0, Lcom/android/launcher/provider/OplusShareFileProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method private copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 4

    new-array p0, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    new-array p0, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "_display_name"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_14

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    :cond_14
    const-string p0, ""

    :goto_16
    return-object p0
.end method

.method private getSize(Landroid/database/Cursor;)J
    .registers 3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "_size"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_14

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    goto :goto_16

    :cond_14
    const-wide/16 p0, -0x1

    :goto_16
    return-wide p0
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "_size"

    const-string v1, "_display_name"

    if-nez p2, :cond_a

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object p2

    :cond_a
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-super/range {v2 .. v7}, Landroidx/core/content/FileProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/provider/OplusShareFileProvider;->getSize(Landroid/database/Cursor;)J

    move-result-wide p3

    invoke-direct {p0, p1}, Lcom/android/launcher/provider/OplusShareFileProvider;->getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcom/android/launcher/share/ShareAppHelper;->getInstance()Lcom/android/launcher/share/ShareAppHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/share/ShareAppHelper;->getShareAppName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher/provider/OplusShareFileProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "query: displayName = "

    const-string v4, ", shareAppName = "

    const-string v5, ", size= "

    invoke-static {v3, p5, v4, p1, v5}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, p2

    new-array v2, v2, [Ljava/lang/String;

    array-length v3, p2

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p2

    const/4 v5, 0x0

    move v6, v5

    :goto_47
    if-ge v5, v4, :cond_7a

    aget-object v7, p2, v5

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_66

    aput-object v1, v2, v6

    add-int/lit8 v7, v6, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5d

    move-object v8, p5

    goto :goto_63

    :cond_5d
    const-string v8, ".apk"

    invoke-static {p1, v8}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_63
    aput-object v8, v3, v6

    goto :goto_76

    :cond_66
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    aput-object v0, v2, v6

    add-int/lit8 v7, v6, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v6

    :goto_76
    move v6, v7

    :cond_77
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    :cond_7a
    invoke-direct {p0, v2, v6}, Lcom/android/launcher/provider/OplusShareFileProvider;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, v6}, Lcom/android/launcher/provider/OplusShareFileProvider;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    new-instance p2, Landroid/database/MatrixCursor;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p2
.end method
