.class public Lcom/oplus/log/util/SPUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CLEAR_TRACE_DATE:Ljava/lang/String; = "clearTraceDate"

.field public static final FILE_NAME:Ljava/lang/String; = "share_data"

.field public static final HAS_CHECK_TIMES:Ljava/lang/String; = "hasCheckTimes"

.field public static final LAST_CHECK_TIME:Ljava/lang/String; = "lastCheckTime"

.field public static final MAX_TIME_PER_DAY:Ljava/lang/String; = "maxTimePerDay"

.field private static final SP_UTILS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/log/util/SPUtil;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRACE_ID:Ljava/lang/String; = "traceIds"


# instance fields
.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/log/util/SPUtil;->SP_UTILS_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance()Lcom/oplus/log/util/SPUtil;
    .registers 2

    const-string v0, "share_data"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/log/util/SPUtil;->getInstance(Ljava/lang/String;I)Lcom/oplus/log/util/SPUtil;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/oplus/log/util/SPUtil;
    .registers 2

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/oplus/log/util/SPUtil;->getInstance(Ljava/lang/String;I)Lcom/oplus/log/util/SPUtil;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/oplus/log/util/SPUtil;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/log/util/SPUtil;->getInstance(Ljava/lang/String;I)Lcom/oplus/log/util/SPUtil;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;I)Lcom/oplus/log/util/SPUtil;
    .registers 5

    invoke-static {p0}, Lcom/oplus/log/util/SPUtil;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "SPUtil"

    :cond_8
    sget-object v0, Lcom/oplus/log/util/SPUtil;->SP_UTILS_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/log/util/SPUtil;

    if-nez v1, :cond_2a

    const-class v2, Lcom/oplus/log/util/SPUtil;

    monitor-enter v2

    :try_start_15
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/log/util/SPUtil;

    if-nez v1, :cond_25

    new-instance v1, Lcom/oplus/log/util/SPUtil;

    invoke-direct {v1, p0, p1}, Lcom/oplus/log/util/SPUtil;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    monitor-exit v2

    goto :goto_2a

    :catchall_27
    move-exception p0

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_27

    throw p0

    :cond_2a
    :goto_2a
    return-object v1
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p2, :cond_12

    invoke-interface {p3, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_12
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_1d

    const-string p0, ""

    invoke-interface {p3, p1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    instance-of p2, p0, Ljava/lang/Boolean;

    if-eqz p2, :cond_2a

    invoke-interface {p3, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2a
    instance-of p2, p0, Ljava/lang/Long;

    if-eqz p2, :cond_39

    const-wide/16 v0, 0x0

    invoke-interface {p3, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_39
    instance-of p0, p0, Ljava/lang/Float;

    if-eqz p0, :cond_50

    const/4 p0, 0x0

    invoke-interface {p3, p1, p0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_46
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_46} :catch_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_46} :catch_47

    return-object p0

    :catch_47
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_50

    :catch_4c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    :cond_50
    :goto_50
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_1a

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_17

    return v2

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1a
    return v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/log/util/SPUtil;->clear(Z)V

    return-void
.end method

.method public clear(Z)V
    .registers 2

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1d

    :cond_10
    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1d
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getAll()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/log/util/SPUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/high16 v0, -0x40800000  # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/oplus/log/util/SPUtil;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/log/util/SPUtil;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "maxTimePerDay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "_"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1f
    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "lastCheckTime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "hasCheckTimes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_10
    sget-object v0, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "_"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_27
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/log/util/SPUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p2, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4e

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_19
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catch Ljava/io/StreamCorruptedException; {:try_start_19 .. :try_end_1e} :catch_47
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_1e} :catch_36
    .catchall {:try_start_19 .. :try_end_1e} :catchall_2c

    :try_start_1e
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p2
    :try_end_22
    .catch Ljava/io/StreamCorruptedException; {:try_start_1e .. :try_end_22} :catch_48
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_22} :catch_37
    .catchall {:try_start_1e .. :try_end_22} :catchall_29

    :try_start_22
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_28} :catch_28

    :catch_28
    return-object p2

    :catchall_29
    move-exception p2

    move-object v0, p0

    goto :goto_2d

    :catchall_2c
    move-exception p2

    :goto_2d
    :try_start_2d
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_35} :catch_35

    :catch_35
    :cond_35
    throw p2

    :catch_36
    move-object p0, v0

    :catch_37
    :try_start_37
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V

    if-eqz p0, :cond_4e

    :goto_3c
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_4e

    :catch_40
    move-object p0, v0

    :catch_41
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V

    if-eqz p0, :cond_4e

    goto :goto_3c

    :catch_47
    move-object p0, v0

    :catch_48
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_4b} :catch_4e

    if-eqz p0, :cond_4e

    goto :goto_3c

    :catch_4e
    :cond_4e
    :goto_4e
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/oplus/log/util/SPUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/log/util/SPUtil;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/log/util/SPUtil;->getValue(Ljava/lang/String;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hasBeenUpload(J)Z
    .registers 6

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object p0

    const-string v0, "traceIds"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/oplus/log/util/SPUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_18

    return v0

    :cond_18
    const-string p2, ","

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_35

    array-length p2, p0

    if-nez p2, :cond_24

    goto :goto_35

    :cond_24
    array-length p2, p0

    move v1, v0

    :goto_26
    if-ge v1, p2, :cond_35

    aget-object v2, p0, v1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_35
    :goto_35
    return v0
.end method

.method public put(Ljava/lang/String;F)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/log/util/SPUtil;->put(Ljava/lang/String;FZ)V

    return-void
.end method

.method public put(Ljava/lang/String;FZ)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p3, :cond_10

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1d

    :cond_10
    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1d
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "maxTimePerDay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "_"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/log/util/SPUtil;->put(Ljava/lang/String;IZ)V

    return-void
.end method

.method public put(Ljava/lang/String;IZ)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p3, :cond_10

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1d

    :cond_10
    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1d
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "hasCheckTimes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "lastCheckTime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_10
    sget-object v0, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "_"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_27
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oplus/log/util/SPUtil;->put(Ljava/lang/String;JZ)V

    return-void
.end method

.method public put(Ljava/lang/String;JZ)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p4, :cond_10

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1d

    :cond_10
    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1d
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/log/util/SPUtil;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p3, :cond_10

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1d

    :cond_10
    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1d
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/log/util/SPUtil;->put(Ljava/lang/String;Ljava/util/Set;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_10

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1d

    :cond_10
    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1d
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/log/util/SPUtil;->put(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public put(Ljava/lang/String;ZZ)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p3, :cond_10

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1d

    :cond_10
    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1d
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/log/util/SPUtil;->remove(Ljava/lang/String;Z)V

    return-void
.end method

.method public remove(Ljava/lang/String;Z)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_10

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1d

    :cond_10
    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1d
    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_37
    .catchall {:try_start_6 .. :try_end_b} :catchall_35

    :try_start_b
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>([B)V

    iget-object p0, p0, Lcom/oplus/log/util/SPUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_28} :catch_32
    .catchall {:try_start_b .. :try_end_28} :catchall_2f

    :try_start_28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2e} :catch_44

    goto :goto_48

    :catchall_2f
    move-exception p0

    move-object v1, v2

    goto :goto_49

    :catch_32
    move-exception p0

    move-object v1, v2

    goto :goto_38

    :catchall_35
    move-exception p0

    goto :goto_49

    :catch_37
    move-exception p0

    :goto_38
    :try_start_38
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_35

    :try_start_3b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_48
    :goto_48
    return-void

    :goto_49
    :try_start_49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_51} :catch_52

    goto :goto_56

    :catch_52
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_56
    :goto_56
    throw p0
.end method
