.class public final Lu5/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu5/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu5/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lu5/k$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu5/k$a;

    invoke-direct {v0}, Lu5/k$a;-><init>()V

    sput-object v0, Lu5/k$a;->a:Lu5/k$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ly5/y;)Li5/a1;
    .registers 2

    const-string p0, "javaTypeParameter"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
