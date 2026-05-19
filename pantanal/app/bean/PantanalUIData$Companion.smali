.class public final Lpantanal/app/bean/PantanalUIData$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/bean/PantanalUIData;
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

    invoke-direct {p0}, Lpantanal/app/bean/PantanalUIData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJsonString(Ljava/lang/String;)Lpantanal/app/bean/PantanalUIData;
    .registers 13
    .annotation runtime Lv3/p;
    .end annotation

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    const-class p0, Lpantanal/app/bean/PantanalUIData;

    invoke-static {p1, p0}, La9/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpantanal/app/bean/PantanalUIData;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    return-object p0

    :catchall_e
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_33

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "fromJsonString failed,msg = "

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "UIData"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_33
    const/4 p0, 0x0

    check-cast p0, Lpantanal/app/bean/PantanalUIData;

    return-object p0
.end method
