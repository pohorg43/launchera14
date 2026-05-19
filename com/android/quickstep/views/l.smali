.class public final synthetic Lcom/android/quickstep/views/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TimeInterpolator;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/views/l;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/views/l;

    invoke-direct {v0}, Lcom/android/quickstep/views/l;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/l;->a:Lcom/android/quickstep/views/l;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 2

    invoke-static {p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->v(F)F

    move-result p0

    return p0
.end method
