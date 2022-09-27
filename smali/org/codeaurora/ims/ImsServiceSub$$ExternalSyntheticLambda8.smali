.class public final synthetic Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda8;->INSTANCE:Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result p1

    return p1
.end method
