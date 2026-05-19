.class public final Lcom/coui/component/responsiveui/breakpoints/Breakpoints;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBreakpoints.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Breakpoints.kt\ncom/coui/component/responsiveui/breakpoints/Breakpoints\n+ 2 Dp.kt\ncom/coui/component/responsiveui/unit/DpKt\n*L\n1#1,39:1\n57#2:40\n57#2:41\n57#2:42\n57#2:43\n*S KotlinDebug\n*F\n+ 1 Breakpoints.kt\ncom/coui/component/responsiveui/breakpoints/Breakpoints\n*L\n26#1:40\n28#1:41\n30#1:42\n32#1:43\n*E\n"
    }
.end annotation


# static fields
.field public static final BP_EXPANDED_WINDOW_BASE_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final BP_EXPANDED_WINDOW_BASE_WIDTH:Lcom/coui/component/responsiveui/unit/Dp;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final BP_MEDIUM_WINDOW_BASE_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final BP_MEDIUM_WINDOW_BASE_WIDTH:Lcom/coui/component/responsiveui/unit/Dp;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/coui/component/responsiveui/breakpoints/Breakpoints;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/coui/component/responsiveui/breakpoints/Breakpoints;

    invoke-direct {v0}, Lcom/coui/component/responsiveui/breakpoints/Breakpoints;-><init>()V

    sput-object v0, Lcom/coui/component/responsiveui/breakpoints/Breakpoints;->INSTANCE:Lcom/coui/component/responsiveui/breakpoints/Breakpoints;

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    const/16 v1, 0x258

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    sput-object v0, Lcom/coui/component/responsiveui/breakpoints/Breakpoints;->BP_MEDIUM_WINDOW_BASE_WIDTH:Lcom/coui/component/responsiveui/unit/Dp;

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    const/16 v1, 0x348

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    sput-object v0, Lcom/coui/component/responsiveui/breakpoints/Breakpoints;->BP_EXPANDED_WINDOW_BASE_WIDTH:Lcom/coui/component/responsiveui/unit/Dp;

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    const/16 v1, 0x1e0

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    sput-object v0, Lcom/coui/component/responsiveui/breakpoints/Breakpoints;->BP_MEDIUM_WINDOW_BASE_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    const/16 v1, 0x384

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    sput-object v0, Lcom/coui/component/responsiveui/breakpoints/Breakpoints;->BP_EXPANDED_WINDOW_BASE_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    const-string p0, "BreakPoints Base-Width ("

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/coui/component/responsiveui/breakpoints/Breakpoints;->BP_MEDIUM_WINDOW_BASE_WIDTH:Lcom/coui/component/responsiveui/unit/Dp;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/coui/component/responsiveui/breakpoints/Breakpoints;->BP_EXPANDED_WINDOW_BASE_WIDTH:Lcom/coui/component/responsiveui/unit/Dp;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), Base-Height ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/coui/component/responsiveui/breakpoints/Breakpoints;->BP_MEDIUM_WINDOW_BASE_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/coui/component/responsiveui/breakpoints/Breakpoints;->BP_EXPANDED_WINDOW_BASE_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
