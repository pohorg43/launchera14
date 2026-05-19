.class public final Lf7/o$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf7/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf7/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lf7/o$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf7/o$a;

    invoke-direct {v0}, Lf7/o$a;-><init>()V

    sput-object v0, Lf7/o$a;->a:Lf7/o$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li5/l;Li5/l;)Z
    .registers 3

    const-string p0, "what"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "from"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
