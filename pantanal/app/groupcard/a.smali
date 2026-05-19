.class public final synthetic Lpantanal/app/groupcard/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic a:Lpantanal/app/groupcard/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/groupcard/a;

    invoke-direct {v0}, Lpantanal/app/groupcard/a;-><init>()V

    sput-object v0, Lpantanal/app/groupcard/a;->a:Lpantanal/app/groupcard/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    invoke-static {p1}, Lpantanal/app/groupcard/CardGroupSdk;->a(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
