.class public final Lf7/w$c;
.super Lf7/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf7/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Lf7/w$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf7/w$c;

    invoke-direct {v0}, Lf7/w$c;-><init>()V

    sput-object v0, Lf7/w$c;->b:Lf7/w$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "must have no value parameters"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lf7/w;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public b(Li5/x;)Z
    .registers 2

    const-string p0, "functionDescriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/a;->g()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method
