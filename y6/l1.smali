.class public abstract Ly6/l1;
.super Ly6/t1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly6/l1$a;
    }
.end annotation


# static fields
.field public static final b:Ly6/l1$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ly6/l1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly6/l1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ly6/l1;->b:Ly6/l1$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly6/t1;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ly6/l0;)Ly6/q1;
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly6/l1;->h(Ly6/j1;)Ly6/q1;

    move-result-object p0

    return-object p0
.end method

.method public abstract h(Ly6/j1;)Ly6/q1;
.end method
