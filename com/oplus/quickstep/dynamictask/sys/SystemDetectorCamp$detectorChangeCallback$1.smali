.class final Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$detectorChangeCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;",
        "Ljava/lang/Boolean;",
        "Lh4/z;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSystemDetectorCamp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemDetectorCamp.kt\ncom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$detectorChangeCallback$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,96:1\n1855#2,2:97\n*S KotlinDebug\n*F\n+ 1 SystemDetectorCamp.kt\ncom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$detectorChangeCallback$1\n*L\n41#1:97,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$detectorChangeCallback$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$detectorChangeCallback$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$detectorChangeCallback$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$detectorChangeCallback$1;->INSTANCE:Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$detectorChangeCallback$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$detectorChangeCallback$1;->invoke(Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;Z)V
    .registers 6

    const-string p0, "detector"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->access$getListeners$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$ISystemListener;

    invoke-interface {v0}, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$ISystemListener;->registerType()I

    move-result v1

    invoke-interface {p1}, Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;->type()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    invoke-interface {v0, p1, p2}, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$ISystemListener;->onChanged(Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;Z)V

    goto :goto_d

    :cond_28
    return-void
.end method
