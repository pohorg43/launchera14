.class public final Lz8/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz8/f$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTrackEventManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrackEventManager.kt\npantanal/track/TrackEventManager\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,189:1\n526#2:190\n511#2,6:191\n215#3,2:197\n*S KotlinDebug\n*F\n+ 1 TrackEventManager.kt\npantanal/track/TrackEventManager\n*L\n88#1:190\n88#1:191,6\n90#1:197,2\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Lz8/f$a;

.field public static g:Lz8/f;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/content/Context;

.field public final c:Lh4/f;

.field public final d:Lh4/f;

.field public final e:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lz8/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz8/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lz8/f;->f:Lz8/f$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lz8/f;->a:Ljava/util/Map;

    sget-object v0, Lz8/f$c;->a:Lz8/f$c;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lz8/f;->c:Lh4/f;

    sget-object v0, Lz8/f$b;->a:Lz8/f$b;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lz8/f;->d:Lh4/f;

    sget-object v0, Lz8/f$f;->a:Lz8/f$f;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lz8/f;->e:Lh4/f;

    return-void
.end method


# virtual methods
.method public final a(I)Lz8/b;
    .registers 4

    iget-object p0, p0, Lz8/f;->d:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lz8/f$d;

    invoke-direct {v1, p1}, Lz8/f$d;-><init>(I)V

    new-instance p1, Lcom/android/launcher/shimmer/c;

    invoke-direct {p1, v1}, Lcom/android/launcher/shimmer/c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "entranceType: Int\n    ):…t(entranceType)\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lz8/b;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lz8/c;
    .registers 3

    const-string v0, "widgetCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lz8/f;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz8/c;

    return-object p0
.end method

.method public final c()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lz8/c;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lz8/f;->c:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public final d(I)Lz8/e;
    .registers 4

    iget-object p0, p0, Lz8/f;->e:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lz8/f$e;

    invoke-direct {v1, p1}, Lz8/f$e;-><init>(I)V

    new-instance p1, Lcom/android/launcher3/folder/l;

    invoke-direct {p1, v1}, Lcom/android/launcher3/folder/l;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "entranceType: Int\n    ):…t(entranceType)\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lz8/e;

    return-object p0
.end method

.method public final e(III)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lz8/f;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz8/c;

    if-eqz p0, :cond_42

    iget-object p1, p0, Lz8/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p1, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {p1}, Lz8/f$a;->a()Lz8/f;

    move-result-object p1

    iget-object p1, p1, Lz8/f;->b:Landroid/content/Context;

    if-eqz p1, :cond_39

    invoke-virtual {p0, p1}, Lz8/c;->x(Landroid/content/Context;)V

    :cond_39
    invoke-virtual {p0}, Lz8/c;->p()V

    invoke-virtual {p0}, Lz8/a;->f()V

    const/4 p1, 0x0

    iput-object p1, p0, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_42
    return-void
.end method
