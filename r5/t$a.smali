.class public final Lr5/t$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lr5/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr5/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lr5/t$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr5/t$a;

    invoke-direct {v0}, Lr5/t$a;-><init>()V

    sput-object v0, Lr5/t$a;->a:Lr5/t$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt5/c;)V
    .registers 2

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
