.class public final synthetic Lcom/android/quickstep/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/j;

.field public static final synthetic b:Lcom/android/quickstep/j;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/j;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/j;->a:Lcom/android/quickstep/j;

    new-instance v0, Lcom/android/quickstep/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/quickstep/j;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/j;->b:Lcom/android/quickstep/j;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createActivityInterface(J)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->m(J)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->C()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
