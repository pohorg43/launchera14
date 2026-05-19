.class public final Lk5/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk5/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lk5/e$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk5/e$a;

    invoke-direct {v0}, Lk5/e$a;-><init>()V

    sput-object v0, Lk5/e$a;->a:Lk5/e$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh6/b;Ly6/s0;)Ly6/s0;
    .registers 3

    const-string p0, "classId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "computedType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
