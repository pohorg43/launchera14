.class public final Ll5/d0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Ll5/d0$a;

.field public static final b:Lh/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/b<",
            "Ll5/d0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ll5/d0$a;

    invoke-direct {v0}, Ll5/d0$a;-><init>()V

    sput-object v0, Ll5/d0$a;->a:Ll5/d0$a;

    new-instance v0, Lh/b;

    const-string v1, "PackageViewDescriptorFactory"

    invoke-direct {v0, v1}, Lh/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Ll5/d0$a;->b:Lh/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
