.class public final Le7/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Li5/a1;

.field public final b:Ly6/l0;

.field public final c:Ly6/l0;


# direct methods
.method public constructor <init>(Li5/a1;Ly6/l0;Ly6/l0;)V
    .registers 5

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inProjection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outProjection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le7/e;->a:Li5/a1;

    iput-object p2, p0, Le7/e;->b:Ly6/l0;

    iput-object p3, p0, Le7/e;->c:Ly6/l0;

    return-void
.end method
