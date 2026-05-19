.class public final Lpantanal/app/groupcard/CardIdentity$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/groupcard/CardIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lpantanal/app/groupcard/CardIdentity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertToCardIdentity(Ljava/lang/String;)Lpantanal/app/groupcard/CardIdentity;
    .registers 14

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    :try_start_4
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lpantanal/app/groupcard/CardIdentity;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpantanal/app/groupcard/CardIdentity;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v0, "convertToCardIdentity occur exception, source: "

    invoke-static {v0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "CardIdentity"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object p0
.end method

.method public final convertToGroupChildCardIdentity(Ljava/lang/String;)Lpantanal/app/groupcard/GroupChildCardIdentity;
    .registers 14

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    :try_start_4
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lpantanal/app/groupcard/GroupChildCardIdentity;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpantanal/app/groupcard/GroupChildCardIdentity;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v0, "convertToGroupChildCardIdentity occur exception, source: "

    invoke-static {v0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "CardIdentity"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object p0
.end method
